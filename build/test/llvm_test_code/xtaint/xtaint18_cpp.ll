; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint18.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint18.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"psr.sink\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [66 x i8] c"/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint18.cpp\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [11 x i8] c"psr.source\00", section "llvm.metadata"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z4sinki(i32 noundef %0) #0 {
entry:
  %.addr = alloca i32, align 4
  store i32 %0, i32* %.addr, align 4
  %.addr1 = bitcast i32* %.addr to i8*
  call void @llvm.var.annotation(i8* %.addr1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 1, i8* null)
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z3fooi(i32 noundef %x) #2 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %call = call noundef i32 @_Z4randv()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, i32* %x.addr, align 4
  %call1 = call noundef i32 @_Z3fooi(i32 noundef %0)
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

declare dso_local noundef i32 @_Z4randv() #3

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %argc, i8** noundef %argv) #4 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %x = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  %argc.addr1 = bitcast i32* %argc.addr to i8*
  call void @llvm.var.annotation(i8* %argc.addr1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 11, i8* null)
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %call = call noundef i32 @_Z3fooi(i32 noundef %0)
  store i32 %call, i32* %x, align 4
  %1 = load i32, i32* %x, align 4
  call void @_Z4sinki(i32 noundef %1)
  ret i32 0
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #2 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
