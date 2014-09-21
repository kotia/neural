function[net, mTestInput,cMeanInput,cStdInput] = executeNN()
	[nTestOutput, nTestInput, nTrainInput, nValidInput, nValidOutput, nTrainOutput, mTestOutput, mTestInput, mTrainInput, mValiInput, mValiOutput, mTrainOutput] = loadFiles;

	[mTrainInputN, cMeanInput, cStdInput] = prestd(mTrainInput);

	mMinMaxElements = min_max(mTrainInput);

	MLPnet = newff(mMinMaxElements,[400,10],{"tansig","purelin"},"trainlm","","mse");

	VV.P = mValiInput;
	VV.T = mValiOutput;

	VV.P = trastd(VV.P, cMeanInput, cStdInput);

	[net] = train(MLPnet, mTrainInputN(:,1:800), mTrainOutput(:,1:800), [], [], VV);
# For testing and executing type the following
#	[mTestInput] = trastd(mTestInput,cMeanInput,cStdInput);
#
#	[simOut] = sim(net, mTestInputN);
#
#	simOut
#