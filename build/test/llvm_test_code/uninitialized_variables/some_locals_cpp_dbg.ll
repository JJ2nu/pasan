; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/some_locals.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/some_locals.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z8functionv() #0 !dbg !8 {
entry:
  ret i32 30, !dbg !14
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #1 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %j, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %k, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 10, i32* %k, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %l, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 20, i32* %l, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %m, metadata !24, metadata !DIExpression()), !dbg !25
  %call = call noundef i32 @_Z8functionv(), !dbg !26
  store i32 %call, i32* %m, align 4, !dbg !25
  ret i32 0, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/some_locals.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/uninitialized_variables", checksumkind: CSK_MD5, checksum: "8533ca1d065e49eac51e473614a22abb")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "function", linkageName: "_Z8functionv", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/uninitialized_variables/some_locals.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "8533ca1d065e49eac51e473614a22abb")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocation(line: 1, column: 18, scope: !8)
!15 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!16 = !DILocalVariable(name: "i", scope: !15, file: !9, line: 4, type: !12)
!17 = !DILocation(line: 4, column: 7, scope: !15)
!18 = !DILocalVariable(name: "j", scope: !15, file: !9, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 7, scope: !15)
!20 = !DILocalVariable(name: "k", scope: !15, file: !9, line: 6, type: !12)
!21 = !DILocation(line: 6, column: 7, scope: !15)
!22 = !DILocalVariable(name: "l", scope: !15, file: !9, line: 7, type: !12)
!23 = !DILocation(line: 7, column: 7, scope: !15)
!24 = !DILocalVariable(name: "m", scope: !15, file: !9, line: 8, type: !12)
!25 = !DILocation(line: 8, column: 7, scope: !15)
!26 = !DILocation(line: 8, column: 11, scope: !15)
!27 = !DILocation(line: 9, column: 3, scope: !15)
