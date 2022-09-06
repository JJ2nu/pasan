; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_14.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_14.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i8 }

$_ZN1XC2Ev = comdat any

@g = dso_local global i32 0, align 4, !dbg !0
@var = dso_local global %struct.X zeroinitializer, align 1, !dbg !13
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_global_14.cpp, i8* null }]

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3fooi(i32 noundef %x) #0 !dbg !22 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !26, metadata !DIExpression()), !dbg !27
  %0 = load i32, i32* %x.addr, align 4, !dbg !28
  %add = add nsw i32 %0, 1, !dbg !29
  store i32 %add, i32* %x.addr, align 4, !dbg !30
  %1 = load i32, i32* %x.addr, align 4, !dbg !31
  ret i32 %1, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #2 section ".text.startup" !dbg !33 {
entry:
  call void @_ZN1XC2Ev(%struct.X* noundef nonnull align 1 dereferenceable(1) @var), !dbg !37
  ret void, !dbg !37
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1XC2Ev(%struct.X* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #3 comdat align 2 !dbg !39 {
entry:
  %this.addr = alloca %struct.X*, align 8
  store %struct.X* %this, %struct.X** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.X** %this.addr, metadata !40, metadata !DIExpression()), !dbg !42
  %this1 = load %struct.X*, %struct.X** %this.addr, align 8
  store i32 1024, i32* @g, align 4, !dbg !43
  ret void, !dbg !45
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #4 !dbg !46 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !49, metadata !DIExpression()), !dbg !50
  %0 = load i32, i32* @g, align 4, !dbg !51
  store i32 %0, i32* %a, align 4, !dbg !50
  %1 = load i32, i32* %a, align 4, !dbg !52
  %call = call noundef i32 @_Z3fooi(i32 noundef %1), !dbg !53
  store i32 %call, i32* %a, align 4, !dbg !54
  %2 = load i32, i32* %a, align 4, !dbg !55
  ret i32 %2, !dbg !56
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_global_14.cpp() #2 section ".text.startup" !dbg !57 {
entry:
  call void @__cxx_global_var_init(), !dbg !59
  ret void
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g", scope: !2, file: !6, line: 1, type: !15, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_14.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "639fc2dcda32822a9fbed3e1292e5ea2")
!4 = !{!5}
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X", file: !6, line: 3, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !7, identifier: "_ZTS1X")
!6 = !DIFile(filename: "test/llvm_test_code/linear_constant/global_14.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "639fc2dcda32822a9fbed3e1292e5ea2")
!7 = !{!8}
!8 = !DISubprogram(name: "X", scope: !5, file: !6, line: 4, type: !9, scopeLine: 4, flags: DIFlagPrototyped, spFlags: 0)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!12 = !{!0, !13}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !6, line: 12, type: !5, isLocal: false, isDefinition: true)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!22 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooi", scope: !6, file: !6, line: 7, type: !23, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{!15, !15}
!25 = !{}
!26 = !DILocalVariable(name: "x", arg: 1, scope: !22, file: !6, line: 7, type: !15)
!27 = !DILocation(line: 7, column: 13, scope: !22)
!28 = !DILocation(line: 8, column: 7, scope: !22)
!29 = !DILocation(line: 8, column: 9, scope: !22)
!30 = !DILocation(line: 8, column: 5, scope: !22)
!31 = !DILocation(line: 9, column: 10, scope: !22)
!32 = !DILocation(line: 9, column: 3, scope: !22)
!33 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !34, file: !34, type: !35, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !25)
!34 = !DIFile(filename: "test/llvm_test_code/linear_constant/global_14.cpp", directory: "/home/jinu/Desktop/phasar")
!35 = !DISubroutineType(types: !36)
!36 = !{null}
!37 = !DILocation(line: 12, column: 3, scope: !38)
!38 = !DILexicalBlockFile(scope: !33, file: !6, discriminator: 0)
!39 = distinct !DISubprogram(name: "X", linkageName: "_ZN1XC2Ev", scope: !5, file: !6, line: 4, type: !9, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !8, retainedNodes: !25)
!40 = !DILocalVariable(name: "this", arg: 1, scope: !39, type: !41, flags: DIFlagArtificial | DIFlagObjectPointer)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!42 = !DILocation(line: 0, scope: !39)
!43 = !DILocation(line: 4, column: 11, scope: !44)
!44 = distinct !DILexicalBlock(scope: !39, file: !6, line: 4, column: 7)
!45 = !DILocation(line: 4, column: 19, scope: !39)
!46 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 14, type: !47, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !25)
!47 = !DISubroutineType(types: !48)
!48 = !{!15}
!49 = !DILocalVariable(name: "a", scope: !46, file: !6, line: 15, type: !15)
!50 = !DILocation(line: 15, column: 7, scope: !46)
!51 = !DILocation(line: 15, column: 11, scope: !46)
!52 = !DILocation(line: 16, column: 11, scope: !46)
!53 = !DILocation(line: 16, column: 7, scope: !46)
!54 = !DILocation(line: 16, column: 5, scope: !46)
!55 = !DILocation(line: 17, column: 10, scope: !46)
!56 = !DILocation(line: 17, column: 3, scope: !46)
!57 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_global_14.cpp", scope: !34, file: !34, type: !58, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !25)
!58 = !DISubroutineType(types: !25)
!59 = !DILocation(line: 0, scope: !57)
