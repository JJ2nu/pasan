; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/llvmIRtoSrc/function_call.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/llvmIRtoSrc/function_call.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local global i32 42, align 4, !dbg !0

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z4multii(i32 noundef %a, i32 noundef %b) #0 !dbg !13 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !19, metadata !DIExpression()), !dbg !20
  %0 = load i32, i32* %a.addr, align 4, !dbg !21
  %1 = load i32, i32* %b.addr, align 4, !dbg !22
  %mul = mul nsw i32 %0, %1, !dbg !23
  ret i32 %mul, !dbg !24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !25 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !28, metadata !DIExpression()), !dbg !29
  %call = call noundef i32 @_Z4multii(i32 noundef 2, i32 noundef 4), !dbg !30
  store i32 %call, i32* %i, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %j, metadata !31, metadata !DIExpression()), !dbg !32
  %0 = load i32, i32* %i, align 4, !dbg !33
  %1 = load i32, i32* @global, align 4, !dbg !34
  %add = add nsw i32 %0, %1, !dbg !35
  store i32 %add, i32* %j, align 4, !dbg !32
  ret i32 0, !dbg !36
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "global", scope: !2, file: !5, line: 3, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/llvmIRtoSrc/function_call.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/llvmIRtoSrc", checksumkind: CSK_MD5, checksum: "4fd46945b4efff29fa9223e3ab1eb44f")
!4 = !{!0}
!5 = !DIFile(filename: "test/llvm_test_code/llvmIRtoSrc/function_call.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "4fd46945b4efff29fa9223e3ab1eb44f")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!13 = distinct !DISubprogram(name: "mult", linkageName: "_Z4multii", scope: !5, file: !5, line: 1, type: !14, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!6, !6, !6}
!16 = !{}
!17 = !DILocalVariable(name: "a", arg: 1, scope: !13, file: !5, line: 1, type: !6)
!18 = !DILocation(line: 1, column: 14, scope: !13)
!19 = !DILocalVariable(name: "b", arg: 2, scope: !13, file: !5, line: 1, type: !6)
!20 = !DILocation(line: 1, column: 21, scope: !13)
!21 = !DILocation(line: 1, column: 33, scope: !13)
!22 = !DILocation(line: 1, column: 37, scope: !13)
!23 = !DILocation(line: 1, column: 35, scope: !13)
!24 = !DILocation(line: 1, column: 26, scope: !13)
!25 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 5, type: !26, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!26 = !DISubroutineType(types: !27)
!27 = !{!6}
!28 = !DILocalVariable(name: "i", scope: !25, file: !5, line: 6, type: !6)
!29 = !DILocation(line: 6, column: 7, scope: !25)
!30 = !DILocation(line: 6, column: 11, scope: !25)
!31 = !DILocalVariable(name: "j", scope: !25, file: !5, line: 7, type: !6)
!32 = !DILocation(line: 7, column: 7, scope: !25)
!33 = !DILocation(line: 7, column: 11, scope: !25)
!34 = !DILocation(line: 7, column: 15, scope: !25)
!35 = !DILocation(line: 7, column: 13, scope: !25)
!36 = !DILocation(line: 8, column: 3, scope: !25)
