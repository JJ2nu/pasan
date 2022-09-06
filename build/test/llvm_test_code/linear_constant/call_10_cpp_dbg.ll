; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/call_10.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/call_10.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z3bari(i32 noundef %b) #0 !dbg !8 {
entry:
  %b.addr = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !14, metadata !DIExpression()), !dbg !15
  ret void, !dbg !16
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z3fooi(i32 noundef %a) #0 !dbg !17 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !18, metadata !DIExpression()), !dbg !19
  %0 = load i32, i32* %a.addr, align 4, !dbg !20
  call void @_Z3bari(i32 noundef %0), !dbg !21
  ret void, !dbg !22
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !23 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !DIExpression()), !dbg !27
  call void @_Z3fooi(i32 noundef 2), !dbg !28
  ret i32 0, !dbg !29
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/call_10.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "47dcf60fc2ff2b0706fda7658c9f5ccd")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "bar", linkageName: "_Z3bari", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/linear_constant/call_10.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "47dcf60fc2ff2b0706fda7658c9f5ccd")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "b", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!15 = !DILocation(line: 1, column: 14, scope: !8)
!16 = !DILocation(line: 1, column: 18, scope: !8)
!17 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooi", scope: !9, file: !9, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!18 = !DILocalVariable(name: "a", arg: 1, scope: !17, file: !9, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 14, scope: !17)
!20 = !DILocation(line: 4, column: 7, scope: !17)
!21 = !DILocation(line: 4, column: 3, scope: !17)
!22 = !DILocation(line: 5, column: 1, scope: !17)
!23 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 7, type: !24, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!24 = !DISubroutineType(types: !25)
!25 = !{!12}
!26 = !DILocalVariable(name: "i", scope: !23, file: !9, line: 8, type: !12)
!27 = !DILocation(line: 8, column: 7, scope: !23)
!28 = !DILocation(line: 9, column: 3, scope: !23)
!29 = !DILocation(line: 10, column: 3, scope: !23)
