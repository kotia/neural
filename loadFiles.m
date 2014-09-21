function[nTestOutput, nTestInput, nTrainInput, nValidInput, nValidOutput, nTrainOutput, mTestOutput, mTestInput, mTrainInput, mValiInput, mValiOutput, mTrainOutput] = loadFiles()	
	load testOutput.mat nTestOutput;
	load testInput.mat nTestInput;
	load trainInput.mat nTrainInput;
	load validInput.mat nValidInput;
	load validOutput.mat nValidOutput;
	load trainOutput.mat nTrainOutput;

	mTrainInput = nTrainInput';
	mValiInput = nValidInput';
	mTestInput = nTestInput';
	mTrainOutput = nTrainOutput';
	mTestOutput = nTestOutput';
	mValiOutput = nValidOutput';