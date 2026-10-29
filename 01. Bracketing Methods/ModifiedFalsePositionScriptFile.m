%ModifiedFalsePositionScriptFile
func=@(x) x.^2 - 2.*x -3;
xa = 2;
xb = 3.2;
es = 0.0001;
maxit = 50;
[root,fx,currentError,iter] = ModifiedFalsePosition(func,xa,xb,es,maxit)