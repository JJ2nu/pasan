; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/llvmIRtoSrc/multi_calls.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/llvmIRtoSrc/multi_calls.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z2idi(i32 noundef %a) #0 !dbg !8 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !14, metadata !DIExpression()), !dbg !15
  %0 = load i32, i32* %a.addr, align 4, !dbg !16
  ret i32 %0, !dbg !17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 -1, i32* %a, align 4, !dbg !22
  %0 = load i32, i32* %a, align 4, !dbg !23
  %call = call noundef i32 @_Z2idi(i32 noundef %0), !dbg !24
  store i32 %call, i32* %a, align 4, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %b, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 42, i32* %b, align 4, !dbg !27
  %call1 = call noundef i32 @_Z2idi(i32 noundef 42), !dbg !28
  store i32 %call1, i32* %b, align 4, !dbg !29
  ret i32 0, !dbg !30
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/llvmIRtoSrc/multi_calls.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/llvmIRtoSrc", checksumkind: CSK_MD5, checksum: "0b1b9694e5e00490e12fe6019e8fb87d")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "id", linkageName: "_Z2idi", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/llvmIRtoSrc/multi_calls.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "0b1b9694e5e00490e12fe6019e8fb87d")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!15 = !DILocation(line: 1, column: 12, scope: !8)
!16 = !DILocation(line: 1, column: 24, scope: !8)
!17 = !DILocation(line: 1, column: 17, scope: !8)
!18 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 3, type: !19, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!19 = !DISubroutineType(types: !20)
!20 = !{!12}
!21 = !DILocalVariable(name: "a", scope: !18, file: !9, line: 4, type: !12)
!22 = !DILocation(line: 4, column: 7, scope: !18)
!23 = !DILocation(line: 5, column: 10, scope: !18)
!24 = !DILocation(line: 5, column: 7, scope: !18)
!25 = !DILocation(line: 5, column: 5, scope: !18)
!26 = !DILocalVariable(name: "b", scope: !18, file: !9, line: 6, type: !12)
!27 = !DILocation(line: 6, column: 7, scope: !18)
!28 = !DILocation(line: 7, column: 7, scope: !18)
!29 = !DILocation(line: 7, column: 5, scope: !18)
!30 = !DILocation(line: 8, column: 3, scope: !18)
