; ModuleID = 'test.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: norecurse nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca double, align 8
  %j = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store double 1.000000e+00, double* %i, align 8
  store i32 1, i32* %j, align 4
  br label %2

; <label>:2                                       ; preds = %7, %0
  %3 = load double, double* %i, align 8
  %4 = load i32, i32* %j, align 4
  %5 = sitofp i32 %4 to double
  %6 = fcmp oeq double %3, %5
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %2
  store double 0.000000e+00, double* %i, align 8
  br label %2

; <label>:8                                       ; preds = %2
  ret i32 1
}

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu3 (tags/RELEASE_380/final)"}