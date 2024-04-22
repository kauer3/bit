using MySql.Data.MySqlClient;
using System.Drawing.Text;

namespace QuizForm
{
    public partial class Form1 : Form
    {
        class Question
        {
            public int Id { get; set; }
            public string Text { get; set; }
            public int CorrectAnswer { get; set; }
            public List<Answer> Answers { get; set; }
        }

        class Answer
        {
            public int Id { get; set; }
            public int QuestionId { get; set; }
            public int AnswerNumber { get; set; }
            public string Text { get; set; }
        }

        List<Question> questions;
        RadioButton[] radioButtons;
        int currentQuestion;
        int selectedAnswer;
        bool answerSubmitted = false;
        int questionsAnswered = 0;
        int questionsCorrect = 0;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            radioButtons = [answerBtn1, answerbtn2, answerbtn3, answerbtn4];
            questions = new List<Question>();
            const string CSTRING = "Server=localhost;Database=quiz;Uid=student;Pwd=secret;";

            try
            {
                using (MySqlConnection conn = new MySqlConnection(CSTRING))
                {
                    conn.Open();
                    string sql = "SELECT * FROM questions";
                    MySqlCommand cmd = new MySqlCommand(sql, conn);
                    MySqlDataReader rdr = cmd.ExecuteReader();
                    Question question = new Question();
                    while (rdr.Read())
                    {
                        questions.Add(new Question
                        {
                            Id = rdr.GetInt32(0),
                            Text = rdr.GetString(1),
                            CorrectAnswer = rdr.GetInt32(2),
                            Answers = new List<Answer>()
                        });
                    }
                    rdr.Close();

                    sql = "SELECT * FROM answers";
                    cmd = new MySqlCommand(sql, conn);
                    rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        Answer answer = new Answer();
                        answer.Id = rdr.GetInt32(0);
                        answer.QuestionId = rdr.GetInt32(1);
                        answer.AnswerNumber = rdr.GetInt32(2);
                        answer.Text = rdr.GetString(3);
                        questions[answer.QuestionId].Answers.Add(answer);
                    }
                    rdr.Close();

                    DisplayRandomQuestion();
                    enableRadioButtons();
                }
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message);
                this.Close();
            }
        }

        private void DisplayRandomQuestion()
        {
            Random rnd = new Random();
            currentQuestion = rnd.Next(questions.Count);
            Question question = questions[currentQuestion];
            label1.Text = question.Text;
            DisplayAnswers(question.Answers);
        }

        private void DisplayAnswers(List<Answer> answer)
        {
            for (int i = 0; i < 4; i++)
            {
                radioButtons[i].Text = answer[i].AnswerNumber + " - " + answer[i].Text;
            }
        }

        private void checkedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < 4; i++)
            {
                if (radioButtons[i].Checked && selectedAnswer != i + 1)
                {
                    selectedAnswer = i + 1;
                }
            }
        }

        private void confirmBtn_Click(object sender, EventArgs e)
        {
            if (confirmBtn.Text == "Exit")
            {
                this.Close();
            }

            if (answerSubmitted && questions.Count > 0)
            {
                questions.RemoveAt(currentQuestion);
                if (questions.Count <= 0)
                {
                    label1.Text = "Quiz Complete!";
                    label2.Text = "You answered " + questionsAnswered + " questions and got " + questionsCorrect + " correct!";
                    confirmBtn.Text = "Exit";

                    for (int i = 0; i < radioButtons.Length; i++)
                    {
                        radioButtons[i].Visible = false;
                    }
                }
                else
                {
                    DisplayRandomQuestion();
                    label2.Text = "";
                    selectedAnswer = 0;
                    answerSubmitted = false;
                    confirmBtn.Text = "Confirm";
                    enableRadioButtons();
                }
                return;
            }

            if (selectedAnswer == 0)
            {
                label2.Text = "Please select an answer!";
                return;
            }

            if (questions.Count <= 0)
            {
                label1.Text = "Quiz Complete!";
                label2.Text = "You answered " + questionsAnswered + " questions and got " + questionsCorrect + " correct!";
                confirmBtn.Text = "Exit";

                for (int i = 0; i < radioButtons.Length; i++)
                {
                    radioButtons[i].Visible = false;
                }
                return;
            }

            checkAnswer();

            confirmBtn.Text = "Next Question";
            answerSubmitted = true;
        }

        private void checkAnswer()
        {
            int correctAnswer = questions[currentQuestion].CorrectAnswer;
            formatRadioButtons(correctAnswer - 1);

            if (selectedAnswer == correctAnswer)
            {
                label2.Text = "Correct!";
                questionsCorrect++;
            }
            else
            {
                label2.Text = "Incorrect!";
            }
            questionsAnswered++;
        }

        private void formatRadioButtons(int correctAnswer)
        {
            for (int i = 0; i < radioButtons.Length; i++)
            {
                if (i != correctAnswer) radioButtons[i].Enabled = false;
            }
        }

        private void enableRadioButtons()
        {
            for (int i = 0; i < radioButtons.Length; i++)
            {
                radioButtons[i].Checked = false;
                radioButtons[i].Enabled = true;
            }
        }
    }
}
