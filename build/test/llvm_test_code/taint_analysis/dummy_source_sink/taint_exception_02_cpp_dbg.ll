; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_02.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_02.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

$_ZN1SC2Ei = comdat any

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %argc, i8** noundef %argv) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s = alloca %struct.S*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata %struct.S** %s, metadata !29, metadata !DIExpression()), !dbg !31
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #6, !dbg !32, !heapallocsite !3
  %0 = bitcast i8* %call to %struct.S*, !dbg !32
  invoke void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 0)
          to label %invoke.cont unwind label %lpad, !dbg !33

invoke.cont:                                      ; preds = %entry
  store %struct.S* %0, %struct.S** %s, align 8, !dbg !31
  %1 = load i32, i32* %argc.addr, align 4, !dbg !34
  call void @_Z4sinki(i32 noundef %1), !dbg !35
  ret i32 0, !dbg !36

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup, !dbg !37
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !37
  store i8* %3, i8** %exn.slot, align 8, !dbg !37
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !37
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !37
  call void @_ZdlPv(i8* noundef %call) #7, !dbg !32
  br label %eh.resume, !dbg !32

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !32
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !32
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !32
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !32
  resume { i8*, i32 } %lpad.val1, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %data) unnamed_addr #3 comdat align 2 !dbg !38 {
entry:
  %this.addr = alloca %struct.S*, align 8
  %data.addr = alloca i32, align 4
  store %struct.S* %this, %struct.S** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.S** %this.addr, metadata !39, metadata !DIExpression()), !dbg !40
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !41, metadata !DIExpression()), !dbg !42
  %this1 = load %struct.S*, %struct.S** %this.addr, align 8
  %data2 = getelementptr inbounds %struct.S, %struct.S* %this1, i32 0, i32 0, !dbg !43
  %0 = load i32, i32* %data.addr, align 4, !dbg !44
  store i32 %0, i32* %data2, align 4, !dbg !43
  ret void, !dbg !45
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #4

declare dso_local void @_Z4sinki(i32 noundef) #5

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin allocsize(0) }
attributes #7 = { builtin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_02.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/taint_analysis/dummy_source_sink", checksumkind: CSK_MD5, checksum: "cb109ea955e422165dce46ae127d1be3")
!2 = !{!3}
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !4, line: 4, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !5, identifier: "_ZTS1S")
!4 = !DIFile(filename: "test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_02.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "cb109ea955e422165dce46ae127d1be3")
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
!18 = distinct !DISubprogram(name: "main", scope: !4, file: !4, line: 9, type: !19, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!19 = !DISubroutineType(types: !20)
!20 = !{!7, !7, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{}
!25 = !DILocalVariable(name: "argc", arg: 1, scope: !18, file: !4, line: 9, type: !7)
!26 = !DILocation(line: 9, column: 14, scope: !18)
!27 = !DILocalVariable(name: "argv", arg: 2, scope: !18, file: !4, line: 9, type: !21)
!28 = !DILocation(line: 9, column: 27, scope: !18)
!29 = !DILocalVariable(name: "s", scope: !18, file: !4, line: 10, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!31 = !DILocation(line: 10, column: 6, scope: !18)
!32 = !DILocation(line: 10, column: 10, scope: !18)
!33 = !DILocation(line: 10, column: 14, scope: !18)
!34 = !DILocation(line: 11, column: 8, scope: !18)
!35 = !DILocation(line: 11, column: 3, scope: !18)
!36 = !DILocation(line: 12, column: 3, scope: !18)
!37 = !DILocation(line: 13, column: 1, scope: !18)
!38 = distinct !DISubprogram(name: "S", linkageName: "_ZN1SC2Ei", scope: !3, file: !4, line: 6, type: !9, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !8, retainedNodes: !24)
!39 = !DILocalVariable(name: "this", arg: 1, scope: !38, type: !30, flags: DIFlagArtificial | DIFlagObjectPointer)
!40 = !DILocation(line: 0, scope: !38)
!41 = !DILocalVariable(name: "data", arg: 2, scope: !38, file: !4, line: 6, type: !7)
!42 = !DILocation(line: 6, column: 9, scope: !38)
!43 = !DILocation(line: 6, column: 17, scope: !38)
!44 = !DILocation(line: 6, column: 22, scope: !38)
!45 = !DILocation(line: 6, column: 29, scope: !38)
