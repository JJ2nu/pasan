; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/struct_member_uninit.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/struct_member_uninit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i16, i16 }

$_ZN1XC2Es = comdat any

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef signext i16 @_Z3foo1X(i32 %_x.coerce) #0 !dbg !19 {
entry:
  %_x = alloca %struct.X, align 2
  %0 = bitcast %struct.X* %_x to i32*
  store i32 %_x.coerce, i32* %0, align 2
  call void @llvm.dbg.declare(metadata %struct.X* %_x, metadata !23, metadata !DIExpression()), !dbg !24
  %a = getelementptr inbounds %struct.X, %struct.X* %_x, i32 0, i32 0, !dbg !25
  %1 = load i16, i16* %a, align 2, !dbg !25
  ret i16 %1, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !27 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.X, align 2
  %agg.tmp = alloca %struct.X, align 2
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.X* %x, metadata !31, metadata !DIExpression()), !dbg !32
  call void @_ZN1XC2Es(%struct.X* noundef nonnull align 2 dereferenceable(4) %x, i16 noundef signext 42), !dbg !32
  %0 = bitcast %struct.X* %agg.tmp to i8*, !dbg !33
  %1 = bitcast %struct.X* %x to i8*, !dbg !33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %0, i8* align 2 %1, i64 4, i1 false), !dbg !33
  %2 = bitcast %struct.X* %agg.tmp to i32*, !dbg !34
  %3 = load i32, i32* %2, align 2, !dbg !34
  %call = call noundef signext i16 @_Z3foo1X(i32 %3), !dbg !34
  ret i32 0, !dbg !35
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1XC2Es(%struct.X* noundef nonnull align 2 dereferenceable(4) %this, i16 noundef signext %_a) unnamed_addr #3 comdat align 2 !dbg !36 {
entry:
  %this.addr = alloca %struct.X*, align 8
  %_a.addr = alloca i16, align 2
  store %struct.X* %this, %struct.X** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.X** %this.addr, metadata !37, metadata !DIExpression()), !dbg !39
  store i16 %_a, i16* %_a.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %_a.addr, metadata !40, metadata !DIExpression()), !dbg !41
  %this1 = load %struct.X*, %struct.X** %this.addr, align 8
  %a = getelementptr inbounds %struct.X, %struct.X* %this1, i32 0, i32 0, !dbg !42
  %0 = load i16, i16* %_a.addr, align 2, !dbg !43
  store i16 %0, i16* %a, align 2, !dbg !42
  ret void, !dbg !44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/struct_member_uninit.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/uninitialized_variables", checksumkind: CSK_MD5, checksum: "9f4ace426f2b6b3b3a9f8e20c2bc1ec8")
!2 = !{!3}
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X", file: !4, line: 1, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !5, identifier: "_ZTS1X")
!4 = !DIFile(filename: "test/llvm_test_code/uninitialized_variables/struct_member_uninit.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "9f4ace426f2b6b3b3a9f8e20c2bc1ec8")
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3, file: !4, line: 2, baseType: !7, size: 16)
!7 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3, file: !4, line: 2, baseType: !7, size: 16, offset: 16)
!9 = !DISubprogram(name: "X", scope: !3, file: !4, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped, spFlags: 0)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !7}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!19 = distinct !DISubprogram(name: "foo", linkageName: "_Z3foo1X", scope: !4, file: !4, line: 6, type: !20, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{!7, !3}
!22 = !{}
!23 = !DILocalVariable(name: "_x", arg: 1, scope: !19, file: !4, line: 6, type: !3)
!24 = !DILocation(line: 6, column: 13, scope: !19)
!25 = !DILocation(line: 8, column: 13, scope: !19)
!26 = !DILocation(line: 8, column: 3, scope: !19)
!27 = distinct !DISubprogram(name: "main", scope: !4, file: !4, line: 11, type: !28, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!28 = !DISubroutineType(types: !29)
!29 = !{!30}
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DILocalVariable(name: "x", scope: !27, file: !4, line: 12, type: !3)
!32 = !DILocation(line: 12, column: 5, scope: !27)
!33 = !DILocation(line: 13, column: 7, scope: !27)
!34 = !DILocation(line: 13, column: 3, scope: !27)
!35 = !DILocation(line: 14, column: 3, scope: !27)
!36 = distinct !DISubprogram(name: "X", linkageName: "_ZN1XC2Es", scope: !3, file: !4, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !9, retainedNodes: !22)
!37 = !DILocalVariable(name: "this", arg: 1, scope: !36, type: !38, flags: DIFlagArtificial | DIFlagObjectPointer)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!39 = !DILocation(line: 0, scope: !36)
!40 = !DILocalVariable(name: "_a", arg: 2, scope: !36, file: !4, line: 3, type: !7)
!41 = !DILocation(line: 3, column: 11, scope: !36)
!42 = !DILocation(line: 3, column: 17, scope: !36)
!43 = !DILocation(line: 3, column: 19, scope: !36)
!44 = !DILocation(line: 3, column: 24, scope: !36)
