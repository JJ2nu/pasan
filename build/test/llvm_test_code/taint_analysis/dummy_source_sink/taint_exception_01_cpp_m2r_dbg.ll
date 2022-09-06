; ModuleID = 'taint_exception_01_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

$_ZN1SC2Ei = comdat any

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !18 {
entry:
  %call = call noundef i32 @_Z6sourcev(), !dbg !22
  call void @llvm.dbg.value(metadata i32 %call, metadata !23, metadata !DIExpression()), !dbg !24
  %call1 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #6, !dbg !25, !heapallocsite !3
  %0 = bitcast i8* %call1 to %struct.S*, !dbg !25
  invoke void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 0)
          to label %invoke.cont unwind label %lpad, !dbg !26

invoke.cont:                                      ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.S* %0, metadata !27, metadata !DIExpression()), !dbg !24
  call void @_Z4sinki(i32 noundef %call), !dbg !29
  ret i32 0, !dbg !30

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup, !dbg !31
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !31
  %3 = extractvalue { i8*, i32 } %1, 1, !dbg !31
  call void @_ZdlPv(i8* noundef %call1) #7, !dbg !25
  br label %eh.resume, !dbg !25

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %2, 0, !dbg !25
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %3, 1, !dbg !25
  resume { i8*, i32 } %lpad.val2, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local noundef i32 @_Z6sourcev() #2

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %data) unnamed_addr #4 comdat align 2 !dbg !32 {
entry:
  call void @llvm.dbg.value(metadata %struct.S* %this, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.value(metadata i32 %data, metadata !35, metadata !DIExpression()), !dbg !34
  %data2 = getelementptr inbounds %struct.S, %struct.S* %this, i32 0, i32 0, !dbg !36
  store i32 %data, i32* %data2, align 4, !dbg !36
  ret void, !dbg !37
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #5

declare dso_local void @_Z4sinki(i32 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin allocsize(0) }
attributes #7 = { builtin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_01.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/taint_analysis/dummy_source_sink", checksumkind: CSK_MD5, checksum: "16e4a9b63f5a1d2074fe9f34a445446b")
!2 = !{!3}
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !4, line: 4, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !5, identifier: "_ZTS1S")
!4 = !DIFile(filename: "test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_01.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "16e4a9b63f5a1d2074fe9f34a445446b")
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3, file: !4, line: 5, baseType: !7, size: 32)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "S", scope: !3, file: !4, line: 6, type: !9, scopeLine: 6, flags: DIFlagPrototyped, spFlags: 0)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !7}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!18 = distinct !DISubprogram(name: "main", scope: !4, file: !4, line: 9, type: !19, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!7}
!21 = !{}
!22 = !DILocation(line: 10, column: 14, scope: !18)
!23 = !DILocalVariable(name: "data", scope: !18, file: !4, line: 10, type: !7)
!24 = !DILocation(line: 0, scope: !18)
!25 = !DILocation(line: 11, column: 10, scope: !18)
!26 = !DILocation(line: 11, column: 14, scope: !18)
!27 = !DILocalVariable(name: "s", scope: !18, file: !4, line: 11, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!29 = !DILocation(line: 12, column: 3, scope: !18)
!30 = !DILocation(line: 13, column: 3, scope: !18)
!31 = !DILocation(line: 14, column: 1, scope: !18)
!32 = distinct !DISubprogram(name: "S", linkageName: "_ZN1SC2Ei", scope: !3, file: !4, line: 6, type: !9, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !8, retainedNodes: !21)
!33 = !DILocalVariable(name: "this", arg: 1, scope: !32, type: !28, flags: DIFlagArtificial | DIFlagObjectPointer)
!34 = !DILocation(line: 0, scope: !32)
!35 = !DILocalVariable(name: "data", arg: 2, scope: !32, file: !4, line: 6, type: !7)
!36 = !DILocation(line: 6, column: 17, scope: !32)
!37 = !DILocation(line: 6, column: 29, scope: !32)
