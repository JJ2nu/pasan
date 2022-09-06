; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/name_mangling_01.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/name_mangling_01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z3foov() #0 !dbg !8 {
entry:
  ret void, !dbg !13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z3fooi(i32 noundef %A) #0 !dbg !14 {
entry:
  %A.addr = alloca i32, align 4
  store i32 %A, i32* %A.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %A.addr, metadata !18, metadata !DIExpression()), !dbg !19
  ret void, !dbg !20
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z3fooii(i32 noundef %A, i32 noundef %B) #0 !dbg !21 {
entry:
  %A.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  store i32 %A, i32* %A.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %A.addr, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 %B, i32* %B.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %B.addr, metadata !26, metadata !DIExpression()), !dbg !27
  ret void, !dbg !28
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z3fooiii(i32 noundef %A, i32 noundef %B, i32 noundef %C) #0 !dbg !29 {
entry:
  %A.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  %C.addr = alloca i32, align 4
  store i32 %A, i32* %A.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %A.addr, metadata !32, metadata !DIExpression()), !dbg !33
  store i32 %B, i32* %B.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %B.addr, metadata !34, metadata !DIExpression()), !dbg !35
  store i32 %C, i32* %C.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %C.addr, metadata !36, metadata !DIExpression()), !dbg !37
  ret void, !dbg !38
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z3fooiiii(i32 noundef %A, i32 noundef %B, i32 noundef %C, i32 noundef %D) #0 !dbg !39 {
entry:
  %A.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  %C.addr = alloca i32, align 4
  %D.addr = alloca i32, align 4
  store i32 %A, i32* %A.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %A.addr, metadata !42, metadata !DIExpression()), !dbg !43
  store i32 %B, i32* %B.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %B.addr, metadata !44, metadata !DIExpression()), !dbg !45
  store i32 %C, i32* %C.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %C.addr, metadata !46, metadata !DIExpression()), !dbg !47
  store i32 %D, i32* %D.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %D.addr, metadata !48, metadata !DIExpression()), !dbg !49
  ret void, !dbg !50
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !51 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @_Z3foov(), !dbg !54
  call void @_Z3fooi(i32 noundef 1), !dbg !55
  call void @_Z3fooii(i32 noundef 1, i32 noundef 2), !dbg !56
  call void @_Z3fooiii(i32 noundef 1, i32 noundef 2, i32 noundef 3), !dbg !57
  call void @_Z3fooiiii(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4), !dbg !58
  ret i32 0, !dbg !59
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/name_mangling_01.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/TaintConfig/JsonConfig", checksumkind: CSK_MD5, checksum: "e45360a16b162949ad15efffb1d83eb2")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", linkageName: "_Z3foov", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!9 = !DIFile(filename: "test/llvm_test_code/TaintConfig/JsonConfig/name_mangling_01.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "e45360a16b162949ad15efffb1d83eb2")
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !{}
!13 = !DILocation(line: 2, column: 13, scope: !8)
!14 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooi", scope: !9, file: !9, line: 4, type: !15, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "A", arg: 1, scope: !14, file: !9, line: 4, type: !17)
!19 = !DILocation(line: 4, column: 14, scope: !14)
!20 = !DILocation(line: 4, column: 18, scope: !14)
!21 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooii", scope: !9, file: !9, line: 6, type: !22, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !17, !17}
!24 = !DILocalVariable(name: "A", arg: 1, scope: !21, file: !9, line: 6, type: !17)
!25 = !DILocation(line: 6, column: 14, scope: !21)
!26 = !DILocalVariable(name: "B", arg: 2, scope: !21, file: !9, line: 6, type: !17)
!27 = !DILocation(line: 6, column: 21, scope: !21)
!28 = !DILocation(line: 6, column: 25, scope: !21)
!29 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooiii", scope: !9, file: !9, line: 8, type: !30, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !17, !17, !17}
!32 = !DILocalVariable(name: "A", arg: 1, scope: !29, file: !9, line: 8, type: !17)
!33 = !DILocation(line: 8, column: 14, scope: !29)
!34 = !DILocalVariable(name: "B", arg: 2, scope: !29, file: !9, line: 8, type: !17)
!35 = !DILocation(line: 8, column: 21, scope: !29)
!36 = !DILocalVariable(name: "C", arg: 3, scope: !29, file: !9, line: 8, type: !17)
!37 = !DILocation(line: 8, column: 28, scope: !29)
!38 = !DILocation(line: 8, column: 32, scope: !29)
!39 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooiiii", scope: !9, file: !9, line: 10, type: !40, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !17, !17, !17, !17}
!42 = !DILocalVariable(name: "A", arg: 1, scope: !39, file: !9, line: 10, type: !17)
!43 = !DILocation(line: 10, column: 14, scope: !39)
!44 = !DILocalVariable(name: "B", arg: 2, scope: !39, file: !9, line: 10, type: !17)
!45 = !DILocation(line: 10, column: 21, scope: !39)
!46 = !DILocalVariable(name: "C", arg: 3, scope: !39, file: !9, line: 10, type: !17)
!47 = !DILocation(line: 10, column: 28, scope: !39)
!48 = !DILocalVariable(name: "D", arg: 4, scope: !39, file: !9, line: 10, type: !17)
!49 = !DILocation(line: 10, column: 35, scope: !39)
!50 = !DILocation(line: 10, column: 39, scope: !39)
!51 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 12, type: !52, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!52 = !DISubroutineType(types: !53)
!53 = !{!17}
!54 = !DILocation(line: 13, column: 3, scope: !51)
!55 = !DILocation(line: 14, column: 3, scope: !51)
!56 = !DILocation(line: 15, column: 3, scope: !51)
!57 = !DILocation(line: 16, column: 3, scope: !51)
!58 = !DILocation(line: 17, column: 3, scope: !51)
!59 = !DILocation(line: 18, column: 3, scope: !51)
