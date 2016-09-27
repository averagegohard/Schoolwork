import java.util.Random;
import java.lang.Math;

public class hw2{
	/* main function */
	public static void main(String[] args){
		// Part 4a
		// initialize lambda as 4
		final double lambda = 4;
		// create a random generator
		Random rand = new Random();
		// number of iterations for part 4a and part 5b is 100
		int iterations = 100;
		// store the values (just in case)
		double randVals[] = new double[iterations];
		double cumExpVal[] = new double[iterations];
		// generate 100 exponentially-distributed random values using Lambda = 4
		for(int i=0; i<iterations; i++){
			// gets a randomly generated uniform value
			randVals[i] = rand.nextDouble();
			// calculates the cummulative exponential value
			cumExpVal[i] = -Math.log(1-randVals[i])/lambda;
			// prints the value of the corresponding cummulative exponential value and the uniformly distributed random value
			System.out.println(cumExpVal[i]+","+randVals[i]);
		}


		// PART 5a
		// number of values to approximate a normal distribution
		int n = 30;
		for(int i=0;i<iterations; i++){
			double normVal = Zrand(n);
			// print out the value that follows the normal distribution
      		System.out.printf("%f\n", normVal);
		}


		// PART 5b
		// store the desired mean and stddev
		final double desiredMean = 72;
		final double desiredStdDev = 16;

		// calculate the desired random variable
		double desiredVar = Zrand(n)*desiredStdDev+desiredMean;
		// print out the desired random variable
		System.out.println(desiredVar);

		// calculate the corresponding z-scores
		double count = 0;
		for(int i=0; i<iterations; i++){
			// create many z values
			desiredVar = Zrand(n)*desiredStdDev+desiredMean;
			// and count how many of them are in the specified range
			if(desiredVar > 66 && desiredVar < 80){
				count++;
			}
		}
		// find the rate at which the z values were in that range
		System.out.printf("Probability:%f\n", count/iterations);
	}

	/* Zrand function that returns a random value that is distributed according to a standard normal distribution.
	by usina random number generator of a uniform distribution from 0 to 1*/
	public static double Zrand(int n){
		// mean of a uniform distribution as n-->infinity = 0.5
		final double uniMean = 0.5;
		// StdDev of a uniform distribution as n-->infinity = (1-0)/sqrt(12)
		final double uniStdDev = (1-0)/(Math.sqrt(12));

		// create a random number generator
		Random r = new Random();
		// keep track of the sum of all random numbers generated
		double sum = 0;
		// generate n uniformly random values and add that to the sum
		for(int i=0; i<n; i++){
			sum += r.nextDouble();
		}

		// through the CLT we can use the sum of this distribution along with the theoretical values as
		// n--> infinity for the uniform distribution and the number of trials to create a random variable
		// which follows the normal distribution
		return (sum-(uniMean*n))/(uniStdDev*Math.sqrt(n));
	}
}