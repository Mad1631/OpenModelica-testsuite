// name: FuncStringInvalid2
// keywords:
// status: incorrect
// cflags: -d=newInst
//
// Checks that positional arguments can't be used for the named parameters in
// the String function.
//

model FuncStringInvalid2
  String s = String(1, false, 3);
end FuncStringInvalid2;

// Result:
// Error processing file: FuncStringInvalid2.mo
// [flattening/modelica/scodeinst/FuncStringInvalid2.mo:11:3-11:33:writable] Error: No matching function found for String(1, false, 3) in component <REMOVE ME>
// candidates are :
//   String($e, minimumLength = 0, leftJustified = true)
//   String($i, minimumLength = 0, leftJustified = true)
//   String($b, minimumLength = 0, leftJustified = true)
//   String($r, significantDigits = 6, minimumLength = 0, leftJustified = true)
//   String($r, format = "-0.6g")
//
// # Error encountered! Exiting...
// # Please check the error message and the flags.
//
// Execution failed!
// endResult