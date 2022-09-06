; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/fun_member_01.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/fun_member_01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i32, i32 }

$_ZN1XC2Eii = comdat any

$_ZNK1X3fooEv = comdat any

$_ZNK1X3barERi = comdat any

@.str = private unnamed_addr constant [11 x i8] c"psr.source\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [87 x i8] c"/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/fun_member_01.cpp\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [9 x i8] c"psr.sink\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (i32 (%struct.X*)* @_ZNK1X3fooEv to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 4, i8* null }], section "llvm.metadata"

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !28 {
entry:
  %retval = alloca i32, align 4
  %V = alloca %struct.X, align 4
  %C = alloca i32, align 4
  %D = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.X* %V, metadata !32, metadata !DIExpression()), !dbg !33
  call void @_ZN1XC2Eii(%struct.X* noundef nonnull align 4 dereferenceable(8) %V, i32 noundef 13, i32 noundef 42), !dbg !33
  %A = getelementptr inbounds %struct.X, %struct.X* %V, i32 0, i32 0, !dbg !34
  store i32 20, i32* %A, align 4, !dbg !35
  %B = getelementptr inbounds %struct.X, %struct.X* %V, i32 0, i32 1, !dbg !36
  store i32 40, i32* %B, align 4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %C, metadata !38, metadata !DIExpression()), !dbg !39
  %call = call noundef i32 @_ZNK1X3fooEv(%struct.X* noundef nonnull align 4 dereferenceable(8) %V), !dbg !40
  store i32 %call, i32* %C, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %D, metadata !41, metadata !DIExpression()), !dbg !42
  store i32 20, i32* %D, align 4, !dbg !42
  call void @_ZNK1X3barERi(%struct.X* noundef nonnull align 4 dereferenceable(8) %V, i32* noundef nonnull align 4 dereferenceable(4) %C), !dbg !43
  %A1 = getelementptr inbounds %struct.X, %struct.X* %V, i32 0, i32 0, !dbg !44
  %0 = load i32, i32* %A1, align 4, !dbg !44
  %B2 = getelementptr inbounds %struct.X, %struct.X* %V, i32 0, i32 1, !dbg !45
  %1 = load i32, i32* %B2, align 4, !dbg !45
  %add = add nsw i32 %0, %1, !dbg !46
  ret i32 %add, !dbg !47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1XC2Eii(%struct.X* noundef nonnull align 4 dereferenceable(8) %this, i32 noundef %A, i32 noundef %B) unnamed_addr #2 comdat align 2 !dbg !48 {
entry:
  %this.addr = alloca %struct.X*, align 8
  %A.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  store %struct.X* %this, %struct.X** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.X** %this.addr, metadata !49, metadata !DIExpression()), !dbg !51
  store i32 %A, i32* %A.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %A.addr, metadata !52, metadata !DIExpression()), !dbg !53
  store i32 %B, i32* %B.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %B.addr, metadata !54, metadata !DIExpression()), !dbg !55
  %this1 = load %struct.X*, %struct.X** %this.addr, align 8
  %A2 = getelementptr inbounds %struct.X, %struct.X* %this1, i32 0, i32 0, !dbg !56
  %0 = load i32, i32* %A.addr, align 4, !dbg !57
  store i32 %0, i32* %A2, align 4, !dbg !56
  %B3 = getelementptr inbounds %struct.X, %struct.X* %this1, i32 0, i32 1, !dbg !58
  %1 = load i32, i32* %B.addr, align 4, !dbg !59
  store i32 %1, i32* %B3, align 4, !dbg !58
  ret void, !dbg !60
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK1X3fooEv(%struct.X* noundef nonnull align 4 dereferenceable(8) %this) #3 comdat align 2 !dbg !61 {
entry:
  %this.addr = alloca %struct.X*, align 8
  store %struct.X* %this, %struct.X** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.X** %this.addr, metadata !62, metadata !DIExpression()), !dbg !64
  %this1 = load %struct.X*, %struct.X** %this.addr, align 8
  %A = getelementptr inbounds %struct.X, %struct.X* %this1, i32 0, i32 0, !dbg !65
  %0 = load i32, i32* %A, align 4, !dbg !65
  %B = getelementptr inbounds %struct.X, %struct.X* %this1, i32 0, i32 1, !dbg !66
  %1 = load i32, i32* %B, align 4, !dbg !66
  %add = add nsw i32 %0, %1, !dbg !67
  %add2 = add nsw i32 %add, 13, !dbg !68
  ret i32 %add2, !dbg !69
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNK1X3barERi(%struct.X* noundef nonnull align 4 dereferenceable(8) %this, i32* noundef nonnull align 4 dereferenceable(4) %V) #3 comdat align 2 !dbg !70 {
entry:
  %this.addr = alloca %struct.X*, align 8
  %V.addr = alloca i32*, align 8
  store %struct.X* %this, %struct.X** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.X** %this.addr, metadata !71, metadata !DIExpression()), !dbg !72
  store i32* %V, i32** %V.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %V.addr, metadata !73, metadata !DIExpression()), !dbg !74
  %V.addr1 = bitcast i32** %V.addr to i8*
  call void @llvm.var.annotation(i8* %V.addr1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 5, i8* null)
  %this2 = load %struct.X*, %struct.X** %this.addr, align 8
  %A = getelementptr inbounds %struct.X, %struct.X* %this2, i32 0, i32 0, !dbg !75
  %0 = load i32, i32* %A, align 4, !dbg !75
  %B = getelementptr inbounds %struct.X, %struct.X* %this2, i32 0, i32 1, !dbg !76
  %1 = load i32, i32* %B, align 4, !dbg !76
  %add = add nsw i32 %0, %1, !dbg !77
  %2 = load i32*, i32** %V.addr, align 8, !dbg !78
  store i32 %add, i32* %2, align 4, !dbg !79
  ret void, !dbg !80
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #4

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/fun_member_01.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/TaintConfig/AttrConfig", checksumkind: CSK_MD5, checksum: "b24521fe75b3653748b5076fc1d19eba")
!2 = !{!3}
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X", file: !4, line: 2, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !5, identifier: "_ZTS1X")
!4 = !DIFile(filename: "test/llvm_test_code/TaintConfig/AttrConfig/fun_member_01.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "b24521fe75b3653748b5076fc1d19eba")
!5 = !{!6, !8, !9, !13, !18}
!6 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !3, file: !4, line: 7, baseType: !7, size: 32)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !3, file: !4, line: 8, baseType: !7, size: 32, offset: 32)
!9 = !DISubprogram(name: "X", scope: !3, file: !4, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped, spFlags: 0)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !7, !7}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!13 = !DISubprogram(name: "foo", linkageName: "_ZNK1X3fooEv", scope: !3, file: !4, line: 4, type: !14, scopeLine: 4, flags: DIFlagPrototyped, spFlags: 0)
!14 = !DISubroutineType(types: !15)
!15 = !{!7, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3)
!18 = !DISubprogram(name: "bar", linkageName: "_ZNK1X3barERi", scope: !3, file: !4, line: 5, type: !19, scopeLine: 5, flags: DIFlagPrototyped, spFlags: 0)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !16, !21}
!21 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!28 = distinct !DISubprogram(name: "main", scope: !4, file: !4, line: 11, type: !29, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!7}
!31 = !{}
!32 = !DILocalVariable(name: "V", scope: !28, file: !4, line: 12, type: !3)
!33 = !DILocation(line: 12, column: 5, scope: !28)
!34 = !DILocation(line: 13, column: 5, scope: !28)
!35 = !DILocation(line: 13, column: 7, scope: !28)
!36 = !DILocation(line: 14, column: 5, scope: !28)
!37 = !DILocation(line: 14, column: 7, scope: !28)
!38 = !DILocalVariable(name: "C", scope: !28, file: !4, line: 15, type: !7)
!39 = !DILocation(line: 15, column: 7, scope: !28)
!40 = !DILocation(line: 15, column: 13, scope: !28)
!41 = !DILocalVariable(name: "D", scope: !28, file: !4, line: 16, type: !7)
!42 = !DILocation(line: 16, column: 7, scope: !28)
!43 = !DILocation(line: 17, column: 5, scope: !28)
!44 = !DILocation(line: 18, column: 12, scope: !28)
!45 = !DILocation(line: 18, column: 18, scope: !28)
!46 = !DILocation(line: 18, column: 14, scope: !28)
!47 = !DILocation(line: 18, column: 3, scope: !28)
!48 = distinct !DISubprogram(name: "X", linkageName: "_ZN1XC2Eii", scope: !3, file: !4, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !9, retainedNodes: !31)
!49 = !DILocalVariable(name: "this", arg: 1, scope: !48, type: !50, flags: DIFlagArtificial | DIFlagObjectPointer)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!51 = !DILocation(line: 0, scope: !48)
!52 = !DILocalVariable(name: "A", arg: 2, scope: !48, file: !4, line: 3, type: !7)
!53 = !DILocation(line: 3, column: 9, scope: !48)
!54 = !DILocalVariable(name: "B", arg: 3, scope: !48, file: !4, line: 3, type: !7)
!55 = !DILocation(line: 3, column: 16, scope: !48)
!56 = !DILocation(line: 3, column: 21, scope: !48)
!57 = !DILocation(line: 3, column: 23, scope: !48)
!58 = !DILocation(line: 3, column: 27, scope: !48)
!59 = !DILocation(line: 3, column: 29, scope: !48)
!60 = !DILocation(line: 3, column: 33, scope: !48)
!61 = distinct !DISubprogram(name: "foo", linkageName: "_ZNK1X3fooEv", scope: !3, file: !4, line: 4, type: !14, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !13, retainedNodes: !31)
!62 = !DILocalVariable(name: "this", arg: 1, scope: !61, type: !63, flags: DIFlagArtificial | DIFlagObjectPointer)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!64 = !DILocation(line: 0, scope: !61)
!65 = !DILocation(line: 4, column: 62, scope: !61)
!66 = !DILocation(line: 4, column: 66, scope: !61)
!67 = !DILocation(line: 4, column: 64, scope: !61)
!68 = !DILocation(line: 4, column: 68, scope: !61)
!69 = !DILocation(line: 4, column: 55, scope: !61)
!70 = distinct !DISubprogram(name: "bar", linkageName: "_ZNK1X3barERi", scope: !3, file: !4, line: 5, type: !19, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !18, retainedNodes: !31)
!71 = !DILocalVariable(name: "this", arg: 1, scope: !70, type: !63, flags: DIFlagArtificial | DIFlagObjectPointer)
!72 = !DILocation(line: 0, scope: !70)
!73 = !DILocalVariable(name: "V", arg: 2, scope: !70, file: !4, line: 5, type: !21)
!74 = !DILocation(line: 5, column: 49, scope: !70)
!75 = !DILocation(line: 5, column: 64, scope: !70)
!76 = !DILocation(line: 5, column: 68, scope: !70)
!77 = !DILocation(line: 5, column: 66, scope: !70)
!78 = !DILocation(line: 5, column: 60, scope: !70)
!79 = !DILocation(line: 5, column: 62, scope: !70)
!80 = !DILocation(line: 5, column: 71, scope: !70)
