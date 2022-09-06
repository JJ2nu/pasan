; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/data_member_01.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/data_member_01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i32, i32 }

$_ZN1XC2Ev = comdat any

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %V = alloca %struct.X, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.X* %V, metadata !19, metadata !DIExpression()), !dbg !20
  call void @_ZN1XC2Ev(%struct.X* noundef nonnull align 4 dereferenceable(8) %V) #3, !dbg !20
  %B = getelementptr inbounds %struct.X, %struct.X* %V, i32 0, i32 1, !dbg !21
  store i32 42, i32* %B, align 4, !dbg !22
  %A = getelementptr inbounds %struct.X, %struct.X* %V, i32 0, i32 0, !dbg !23
  %0 = load i32, i32* %A, align 4, !dbg !23
  %B1 = getelementptr inbounds %struct.X, %struct.X* %V, i32 0, i32 1, !dbg !24
  %1 = load i32, i32* %B1, align 4, !dbg !24
  %add = add nsw i32 %0, %1, !dbg !25
  ret i32 %add, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1XC2Ev(%struct.X* noundef nonnull align 4 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 !dbg !27 {
entry:
  %this.addr = alloca %struct.X*, align 8
  store %struct.X* %this, %struct.X** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.X** %this.addr, metadata !32, metadata !DIExpression()), !dbg !34
  %this1 = load %struct.X*, %struct.X** %this.addr, align 8
  %A = getelementptr inbounds %struct.X, %struct.X* %this1, i32 0, i32 0, !dbg !35
  store i32 13, i32* %A, align 4, !dbg !35
  %B = getelementptr inbounds %struct.X, %struct.X* %this1, i32 0, i32 1, !dbg !36
  store i32 0, i32* %B, align 4, !dbg !36
  ret void, !dbg !37
}

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/data_member_01.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/TaintConfig/JsonConfig", checksumkind: CSK_MD5, checksum: "2e26fd3f9b23ca8f0a64c7d2548976ca")
!2 = !{!3}
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X", file: !4, line: 2, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !5, identifier: "_ZTS1X")
!4 = !DIFile(filename: "test/llvm_test_code/TaintConfig/JsonConfig/data_member_01.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "2e26fd3f9b23ca8f0a64c7d2548976ca")
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !3, file: !4, line: 3, baseType: !7, size: 32)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !3, file: !4, line: 4, baseType: !7, size: 32, offset: 32)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!15 = distinct !DISubprogram(name: "main", scope: !4, file: !4, line: 7, type: !16, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!7}
!18 = !{}
!19 = !DILocalVariable(name: "V", scope: !15, file: !4, line: 8, type: !3)
!20 = !DILocation(line: 8, column: 5, scope: !15)
!21 = !DILocation(line: 9, column: 5, scope: !15)
!22 = !DILocation(line: 9, column: 7, scope: !15)
!23 = !DILocation(line: 10, column: 12, scope: !15)
!24 = !DILocation(line: 10, column: 18, scope: !15)
!25 = !DILocation(line: 10, column: 14, scope: !15)
!26 = !DILocation(line: 10, column: 3, scope: !15)
!27 = distinct !DISubprogram(name: "X", linkageName: "_ZN1XC2Ev", scope: !3, file: !4, line: 2, type: !28, scopeLine: 2, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !31, retainedNodes: !18)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!31 = !DISubprogram(name: "X", scope: !3, type: !28, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!32 = !DILocalVariable(name: "this", arg: 1, scope: !27, type: !33, flags: DIFlagArtificial | DIFlagObjectPointer)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!34 = !DILocation(line: 0, scope: !27)
!35 = !DILocation(line: 3, column: 7, scope: !27)
!36 = !DILocation(line: 4, column: 7, scope: !27)
!37 = !DILocation(line: 2, column: 8, scope: !27)
