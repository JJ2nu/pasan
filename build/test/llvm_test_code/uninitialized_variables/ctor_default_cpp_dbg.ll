; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/ctor_default.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/ctor_default.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MyType = type { i32 }

$_ZN6MyTypeC2Ev = comdat any

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.MyType, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.MyType* %t, metadata !22, metadata !DIExpression()), !dbg !23
  call void @_ZN6MyTypeC2Ev(%struct.MyType* noundef nonnull align 4 dereferenceable(4) %t), !dbg !23
  ret i32 0, !dbg !24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6MyTypeC2Ev(%struct.MyType* noundef nonnull align 4 dereferenceable(4) %this) unnamed_addr #2 comdat align 2 !dbg !25 {
entry:
  %this.addr = alloca %struct.MyType*, align 8
  store %struct.MyType* %this, %struct.MyType** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.MyType** %this.addr, metadata !26, metadata !DIExpression()), !dbg !28
  %this1 = load %struct.MyType*, %struct.MyType** %this.addr, align 8
  ret void, !dbg !29
}

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/ctor_default.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/uninitialized_variables", checksumkind: CSK_MD5, checksum: "59e8d4daab7f6acec12936753cb7278c")
!2 = !{!3}
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MyType", file: !4, line: 1, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !5, identifier: "_ZTS6MyType")
!4 = !DIFile(filename: "test/llvm_test_code/uninitialized_variables/ctor_default.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "59e8d4daab7f6acec12936753cb7278c")
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !3, file: !4, line: 2, baseType: !7, size: 32)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "MyType", scope: !3, file: !4, line: 3, type: !9, scopeLine: 3, flags: DIFlagPrototyped, spFlags: 0)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!18 = distinct !DISubprogram(name: "main", scope: !4, file: !4, line: 6, type: !19, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!7}
!21 = !{}
!22 = !DILocalVariable(name: "t", scope: !18, file: !4, line: 7, type: !3)
!23 = !DILocation(line: 7, column: 10, scope: !18)
!24 = !DILocation(line: 8, column: 3, scope: !18)
!25 = distinct !DISubprogram(name: "MyType", linkageName: "_ZN6MyTypeC2Ev", scope: !3, file: !4, line: 3, type: !9, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !8, retainedNodes: !21)
!26 = !DILocalVariable(name: "this", arg: 1, scope: !25, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!28 = !DILocation(line: 0, scope: !25)
!29 = !DILocation(line: 3, column: 13, scope: !25)
