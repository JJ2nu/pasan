; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/recursion_01.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/recursion_01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cond = external dso_local global i8, align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z9decrementi(i32 noundef %i) #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !14, metadata !DIExpression()), !dbg !15
  %0 = load i8, i8* @cond, align 1, !dbg !16
  %tobool = trunc i8 %0 to i1, !dbg !16
  br i1 %tobool, label %if.then, label %if.end, !dbg !18

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4, !dbg !19
  %dec = add nsw i32 %1, -1, !dbg !19
  store i32 %dec, i32* %i.addr, align 4, !dbg !19
  %call = call noundef i32 @_Z9decrementi(i32 noundef %dec), !dbg !21
  store i32 %call, i32* %retval, align 4, !dbg !22
  br label %return, !dbg !22

if.end:                                           ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !23
  br label %return, !dbg !23

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !24
  ret i32 %2, !dbg !24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !25 {
entry:
  %retval = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %j, metadata !28, metadata !DIExpression()), !dbg !29
  %call = call noundef i32 @_Z9decrementi(i32 noundef -42), !dbg !30
  store i32 %call, i32* %j, align 4, !dbg !29
  ret i32 0, !dbg !31
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/recursion_01.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "565b8d84bb087606bde25806f2309409")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "decrement", linkageName: "_Z9decrementi", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/linear_constant/recursion_01.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "565b8d84bb087606bde25806f2309409")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "i", arg: 1, scope: !8, file: !9, line: 2, type: !12)
!15 = !DILocation(line: 2, column: 19, scope: !8)
!16 = !DILocation(line: 3, column: 7, scope: !17)
!17 = distinct !DILexicalBlock(scope: !8, file: !9, line: 3, column: 7)
!18 = !DILocation(line: 3, column: 7, scope: !8)
!19 = !DILocation(line: 4, column: 22, scope: !20)
!20 = distinct !DILexicalBlock(scope: !17, file: !9, line: 3, column: 13)
!21 = !DILocation(line: 4, column: 12, scope: !20)
!22 = !DILocation(line: 4, column: 5, scope: !20)
!23 = !DILocation(line: 6, column: 3, scope: !8)
!24 = !DILocation(line: 7, column: 1, scope: !8)
!25 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 9, type: !26, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!26 = !DISubroutineType(types: !27)
!27 = !{!12}
!28 = !DILocalVariable(name: "j", scope: !25, file: !9, line: 10, type: !12)
!29 = !DILocation(line: 10, column: 7, scope: !25)
!30 = !DILocation(line: 10, column: 11, scope: !25)
!31 = !DILocation(line: 11, column: 3, scope: !25)
