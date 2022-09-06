; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_15.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_15.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i8 }
%struct.Y = type { i8 }

$_ZN1XC2Ev = comdat any

$_ZN1YC2Ev = comdat any

$_ZN1YD2Ev = comdat any

@g1 = dso_local global i32 0, align 4, !dbg !0
@g2 = dso_local global i32 99, align 4, !dbg !20
@var = dso_local global %struct.X zeroinitializer, align 1, !dbg !23
@war = dso_local global %struct.Y zeroinitializer, align 1, !dbg !25
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_global_15.cpp, i8* null }]

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3fooi(i32 noundef %x) #0 !dbg !33 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !37, metadata !DIExpression()), !dbg !38
  %0 = load i32, i32* %x.addr, align 4, !dbg !39
  %add = add nsw i32 %0, 1, !dbg !40
  store i32 %add, i32* %x.addr, align 4, !dbg !41
  %1 = load i32, i32* %x.addr, align 4, !dbg !42
  ret i32 %1, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #2 section ".text.startup" !dbg !44 {
entry:
  call void @_ZN1XC2Ev(%struct.X* noundef nonnull align 1 dereferenceable(1) @var), !dbg !48
  ret void, !dbg !48
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1XC2Ev(%struct.X* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #3 comdat align 2 !dbg !50 {
entry:
  %this.addr = alloca %struct.X*, align 8
  store %struct.X* %this, %struct.X** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.X** %this.addr, metadata !51, metadata !DIExpression()), !dbg !53
  %this1 = load %struct.X*, %struct.X** %this.addr, align 8
  store i32 1024, i32* @g1, align 4, !dbg !54
  ret void, !dbg !56
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #2 section ".text.startup" !dbg !57 {
entry:
  call void @_ZN1YC2Ev(%struct.Y* noundef nonnull align 1 dereferenceable(1) @war), !dbg !58
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%struct.Y*)* @_ZN1YD2Ev to void (i8*)*), i8* getelementptr inbounds (%struct.Y, %struct.Y* @war, i32 0, i32 0), i8* @__dso_handle) #4, !dbg !60
  ret void, !dbg !58
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1YC2Ev(%struct.Y* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #3 comdat align 2 !dbg !61 {
entry:
  %this.addr = alloca %struct.Y*, align 8
  store %struct.Y* %this, %struct.Y** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Y** %this.addr, metadata !62, metadata !DIExpression()), !dbg !64
  %this1 = load %struct.Y*, %struct.Y** %this.addr, align 8
  %0 = load i32, i32* @g2, align 4, !dbg !65
  %add = add nsw i32 %0, 1, !dbg !67
  store i32 %add, i32* @g2, align 4, !dbg !68
  ret void, !dbg !69
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1YD2Ev(%struct.Y* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #3 comdat align 2 !dbg !70 {
entry:
  %this.addr = alloca %struct.Y*, align 8
  store %struct.Y* %this, %struct.Y** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Y** %this.addr, metadata !71, metadata !DIExpression()), !dbg !72
  %this1 = load %struct.Y*, %struct.Y** %this.addr, align 8
  %0 = load i32, i32* @g2, align 4, !dbg !73
  %add = add nsw i32 %0, 13, !dbg !75
  store i32 %add, i32* @g1, align 4, !dbg !76
  ret void, !dbg !77
}

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #4

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #5 !dbg !78 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !81, metadata !DIExpression()), !dbg !82
  %0 = load i32, i32* @g1, align 4, !dbg !83
  store i32 %0, i32* %a, align 4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %b, metadata !84, metadata !DIExpression()), !dbg !85
  %1 = load i32, i32* @g2, align 4, !dbg !86
  store i32 %1, i32* %b, align 4, !dbg !85
  %2 = load i32, i32* %a, align 4, !dbg !87
  %call = call noundef i32 @_Z3fooi(i32 noundef %2), !dbg !88
  store i32 %call, i32* %a, align 4, !dbg !89
  %3 = load i32, i32* %a, align 4, !dbg !90
  %add = add nsw i32 %3, 30, !dbg !91
  ret i32 %add, !dbg !92
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_global_15.cpp() #2 section ".text.startup" !dbg !93 {
entry:
  call void @__cxx_global_var_init(), !dbg !95
  call void @__cxx_global_var_init.1(), !dbg !95
  ret void
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g1", scope: !2, file: !6, line: 1, type: !22, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_15.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "e7d82de47a5f1e7fee920991a51bb21c")
!4 = !{!5, !12}
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X", file: !6, line: 4, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !7, identifier: "_ZTS1X")
!6 = !DIFile(filename: "test/llvm_test_code/linear_constant/global_15.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "e7d82de47a5f1e7fee920991a51bb21c")
!7 = !{!8}
!8 = !DISubprogram(name: "X", scope: !5, file: !6, line: 5, type: !9, scopeLine: 5, flags: DIFlagPrototyped, spFlags: 0)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Y", file: !6, line: 8, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !13, identifier: "_ZTS1Y")
!13 = !{!14, !18}
!14 = !DISubprogram(name: "Y", scope: !12, file: !6, line: 9, type: !15, scopeLine: 9, flags: DIFlagPrototyped, spFlags: 0)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!18 = !DISubprogram(name: "~Y", scope: !12, file: !6, line: 10, type: !15, scopeLine: 10, flags: DIFlagPrototyped, spFlags: 0)
!19 = !{!0, !20, !23, !25}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "g2", scope: !2, file: !6, line: 2, type: !22, isLocal: false, isDefinition: true)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !6, line: 18, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "war", scope: !2, file: !6, line: 19, type: !12, isLocal: false, isDefinition: true)
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!33 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooi", scope: !6, file: !6, line: 13, type: !34, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{!22, !22}
!36 = !{}
!37 = !DILocalVariable(name: "x", arg: 1, scope: !33, file: !6, line: 13, type: !22)
!38 = !DILocation(line: 13, column: 13, scope: !33)
!39 = !DILocation(line: 14, column: 7, scope: !33)
!40 = !DILocation(line: 14, column: 9, scope: !33)
!41 = !DILocation(line: 14, column: 5, scope: !33)
!42 = !DILocation(line: 15, column: 10, scope: !33)
!43 = !DILocation(line: 15, column: 3, scope: !33)
!44 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !45, file: !45, type: !46, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !36)
!45 = !DIFile(filename: "test/llvm_test_code/linear_constant/global_15.cpp", directory: "/home/jinu/Desktop/phasar")
!46 = !DISubroutineType(types: !47)
!47 = !{null}
!48 = !DILocation(line: 18, column: 3, scope: !49)
!49 = !DILexicalBlockFile(scope: !44, file: !6, discriminator: 0)
!50 = distinct !DISubprogram(name: "X", linkageName: "_ZN1XC2Ev", scope: !5, file: !6, line: 5, type: !9, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !8, retainedNodes: !36)
!51 = !DILocalVariable(name: "this", arg: 1, scope: !50, type: !52, flags: DIFlagArtificial | DIFlagObjectPointer)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!53 = !DILocation(line: 0, scope: !50)
!54 = !DILocation(line: 5, column: 12, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !6, line: 5, column: 7)
!56 = !DILocation(line: 5, column: 20, scope: !50)
!57 = distinct !DISubprogram(name: "__cxx_global_var_init.1", scope: !45, file: !45, type: !46, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !36)
!58 = !DILocation(line: 19, column: 3, scope: !59)
!59 = !DILexicalBlockFile(scope: !57, file: !6, discriminator: 0)
!60 = !DILocation(line: 0, scope: !57)
!61 = distinct !DISubprogram(name: "Y", linkageName: "_ZN1YC2Ev", scope: !12, file: !6, line: 9, type: !15, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !14, retainedNodes: !36)
!62 = !DILocalVariable(name: "this", arg: 1, scope: !61, type: !63, flags: DIFlagArtificial | DIFlagObjectPointer)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!64 = !DILocation(line: 0, scope: !61)
!65 = !DILocation(line: 9, column: 14, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !6, line: 9, column: 7)
!67 = !DILocation(line: 9, column: 17, scope: !66)
!68 = !DILocation(line: 9, column: 12, scope: !66)
!69 = !DILocation(line: 9, column: 22, scope: !61)
!70 = distinct !DISubprogram(name: "~Y", linkageName: "_ZN1YD2Ev", scope: !12, file: !6, line: 10, type: !15, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !18, retainedNodes: !36)
!71 = !DILocalVariable(name: "this", arg: 1, scope: !70, type: !63, flags: DIFlagArtificial | DIFlagObjectPointer)
!72 = !DILocation(line: 0, scope: !70)
!73 = !DILocation(line: 10, column: 15, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !6, line: 10, column: 8)
!75 = !DILocation(line: 10, column: 18, scope: !74)
!76 = !DILocation(line: 10, column: 13, scope: !74)
!77 = !DILocation(line: 10, column: 24, scope: !70)
!78 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 21, type: !79, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!79 = !DISubroutineType(types: !80)
!80 = !{!22}
!81 = !DILocalVariable(name: "a", scope: !78, file: !6, line: 22, type: !22)
!82 = !DILocation(line: 22, column: 7, scope: !78)
!83 = !DILocation(line: 22, column: 11, scope: !78)
!84 = !DILocalVariable(name: "b", scope: !78, file: !6, line: 23, type: !22)
!85 = !DILocation(line: 23, column: 7, scope: !78)
!86 = !DILocation(line: 23, column: 11, scope: !78)
!87 = !DILocation(line: 24, column: 11, scope: !78)
!88 = !DILocation(line: 24, column: 7, scope: !78)
!89 = !DILocation(line: 24, column: 5, scope: !78)
!90 = !DILocation(line: 25, column: 10, scope: !78)
!91 = !DILocation(line: 25, column: 12, scope: !78)
!92 = !DILocation(line: 25, column: 3, scope: !78)
!93 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_global_15.cpp", scope: !45, file: !45, type: !94, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !36)
!94 = !DISubroutineType(types: !36)
!95 = !DILocation(line: 0, scope: !93)
