package vowpalWabbit.learner;

import java.io.Closeable;
import java.io.File;

/**
 * This is the super type of all different typed VW learners.  This type exists to ensure that the
 * {@link VWLearners#create(String)} method has a super type.
 */
public interface VWLearner extends Closeable {

    // This tells the implementations that an IOException cannot be thrown.
    @Override void close();

    float exampleNumber();

    float sumLoss();

    void saveModel(File filename);
}
