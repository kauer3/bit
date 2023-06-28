

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * The test class AverageOfDoublesTest.
 *
 * @author  (your name)
 * @version (a version number or a date)
 */
public class AverageOfDoublesTest
{
    /**
     * Default constructor for test class AverageOfDoublesTest
     */
    public AverageOfDoublesTest()
    {
    }

    /**
     * Sets up the test fixture.
     *
     * Called before every test case method.
     */
    @BeforeEach
    public void setUp()
    {
    }

    /**
     * Tears down the test fixture.
     *
     * Called after every test case method.
     */
    @AfterEach
    public void tearDown()
    {
    }

    @Test
    public void getAverage()
    {
        AverageOfDoubles.main(3, 5, 7);
        AverageOfDoubles.main(2.2, 8.6, 27.91);
    }
}

