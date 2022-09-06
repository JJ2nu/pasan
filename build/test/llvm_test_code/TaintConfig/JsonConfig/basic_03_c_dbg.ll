; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/basic_03.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/basic_03.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pair_t = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @makePair() #0 !dbg !8 {
entry:
  %retval = alloca %struct.Pair_t, align 4
  call void @llvm.dbg.declare(metadata %struct.Pair_t* %retval, metadata !19, metadata !DIExpression()), !dbg !20
  %A = getelementptr inbounds %struct.Pair_t, %struct.Pair_t* %retval, i32 0, i32 0, !dbg !21
  store i32 0, i32* %A, align 4, !dbg !22
  %B = getelementptr inbounds %struct.Pair_t, %struct.Pair_t* %retval, i32 0, i32 1, !dbg !23
  store i32 0, i32* %B, align 4, !dbg !24
  %0 = bitcast %struct.Pair_t* %retval to i64*, !dbg !25
  %1 = load i64, i64* %0, align 4, !dbg !25
  ret i64 %1, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Pair_t* @taintPair(%struct.Pair_t* noundef %P) #0 !dbg !26 {
entry:
  %P.addr = alloca %struct.Pair_t*, align 8
  store %struct.Pair_t* %P, %struct.Pair_t** %P.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Pair_t** %P.addr, metadata !30, metadata !DIExpression()), !dbg !31
  %0 = load %struct.Pair_t*, %struct.Pair_t** %P.addr, align 8, !dbg !32
  %A = getelementptr inbounds %struct.Pair_t, %struct.Pair_t* %0, i32 0, i32 0, !dbg !33
  store i32 13, i32* %A, align 4, !dbg !34
  %1 = load %struct.Pair_t*, %struct.Pair_t** %P.addr, align 8, !dbg !35
  %B = getelementptr inbounds %struct.Pair_t, %struct.Pair_t* %1, i32 0, i32 1, !dbg !36
  store i32 13, i32* %B, align 4, !dbg !37
  %2 = load %struct.Pair_t*, %struct.Pair_t** %P.addr, align 8, !dbg !38
  ret %struct.Pair_t* %2, !dbg !39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !40 {
entry:
  %retval = alloca i32, align 4
  %P = alloca %struct.Pair_t, align 4
  %Q = alloca %struct.Pair_t*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.Pair_t* %P, metadata !43, metadata !DIExpression()), !dbg !44
  %call = call i64 @makePair(), !dbg !45
  %0 = bitcast %struct.Pair_t* %P to i64*, !dbg !45
  store i64 %call, i64* %0, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata %struct.Pair_t** %Q, metadata !46, metadata !DIExpression()), !dbg !47
  %call1 = call %struct.Pair_t* @taintPair(%struct.Pair_t* noundef %P), !dbg !48
  store %struct.Pair_t* %call1, %struct.Pair_t** %Q, align 8, !dbg !47
  %1 = load %struct.Pair_t*, %struct.Pair_t** %Q, align 8, !dbg !49
  %A = getelementptr inbounds %struct.Pair_t, %struct.Pair_t* %1, i32 0, i32 0, !dbg !50
  %2 = load i32, i32* %A, align 4, !dbg !50
  ret i32 %2, !dbg !51
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/basic_03.c", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/TaintConfig/JsonConfig", checksumkind: CSK_MD5, checksum: "bfaef7a5c0fc63e1405a8fbfe7d88e83")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "makePair", scope: !9, file: !9, line: 7, type: !10, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!9 = !DIFile(filename: "test/llvm_test_code/TaintConfig/JsonConfig/basic_03.c", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "bfaef7a5c0fc63e1405a8fbfe7d88e83")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Pair", file: !9, line: 5, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Pair_t", file: !9, line: 2, size: 64, elements: !14)
!14 = !{!15, !17}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !13, file: !9, line: 3, baseType: !16, size: 32)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !13, file: !9, line: 4, baseType: !16, size: 32, offset: 32)
!18 = !{}
!19 = !DILocalVariable(name: "P", scope: !8, file: !9, line: 8, type: !12)
!20 = !DILocation(line: 8, column: 8, scope: !8)
!21 = !DILocation(line: 9, column: 5, scope: !8)
!22 = !DILocation(line: 9, column: 7, scope: !8)
!23 = !DILocation(line: 10, column: 5, scope: !8)
!24 = !DILocation(line: 10, column: 7, scope: !8)
!25 = !DILocation(line: 11, column: 3, scope: !8)
!26 = distinct !DISubprogram(name: "taintPair", scope: !9, file: !9, line: 14, type: !27, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!30 = !DILocalVariable(name: "P", arg: 1, scope: !26, file: !9, line: 14, type: !29)
!31 = !DILocation(line: 14, column: 23, scope: !26)
!32 = !DILocation(line: 15, column: 3, scope: !26)
!33 = !DILocation(line: 15, column: 6, scope: !26)
!34 = !DILocation(line: 15, column: 8, scope: !26)
!35 = !DILocation(line: 16, column: 3, scope: !26)
!36 = !DILocation(line: 16, column: 6, scope: !26)
!37 = !DILocation(line: 16, column: 8, scope: !26)
!38 = !DILocation(line: 17, column: 10, scope: !26)
!39 = !DILocation(line: 17, column: 3, scope: !26)
!40 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 20, type: !41, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!41 = !DISubroutineType(types: !42)
!42 = !{!16}
!43 = !DILocalVariable(name: "P", scope: !40, file: !9, line: 21, type: !12)
!44 = !DILocation(line: 21, column: 8, scope: !40)
!45 = !DILocation(line: 21, column: 12, scope: !40)
!46 = !DILocalVariable(name: "Q", scope: !40, file: !9, line: 22, type: !29)
!47 = !DILocation(line: 22, column: 9, scope: !40)
!48 = !DILocation(line: 22, column: 13, scope: !40)
!49 = !DILocation(line: 23, column: 10, scope: !40)
!50 = !DILocation(line: 23, column: 13, scope: !40)
!51 = !DILocation(line: 23, column: 3, scope: !40)
