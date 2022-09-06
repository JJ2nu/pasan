; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_06.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_06.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

$_ZN1SC2Ei = comdat any

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %data = alloca i32, align 4
  %s = alloca %struct.S*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !22, metadata !DIExpression()), !dbg !23
  %call = call noundef i32 @_Z6sourcev(), !dbg !24
  store i32 %call, i32* %data, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata %struct.S** %s, metadata !25, metadata !DIExpression()), !dbg !28
  %call1 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #6
          to label %invoke.cont unwind label %lpad, !dbg !29, !heapallocsite !3

invoke.cont:                                      ; preds = %entry
  %0 = bitcast i8* %call1 to %struct.S*, !dbg !29
  invoke void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 0)
          to label %invoke.cont3 unwind label %lpad2, !dbg !30

invoke.cont3:                                     ; preds = %invoke.cont
  store %struct.S* %0, %struct.S** %s, align 8, !dbg !28
  %1 = load i32, i32* %data, align 4, !dbg !31
  invoke void @_Z4sinki(i32 noundef %1)
          to label %invoke.cont4 unwind label %lpad, !dbg !32

invoke.cont4:                                     ; preds = %invoke.cont3
  br label %try.cont, !dbg !33

lpad:                                             ; preds = %invoke.cont3, %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null, !dbg !34
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !34
  store i8* %3, i8** %exn.slot, align 8, !dbg !34
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !34
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !34
  br label %catch, !dbg !34

lpad2:                                            ; preds = %invoke.cont
  %5 = landingpad { i8*, i32 }
          catch i8* null, !dbg !34
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !34
  store i8* %6, i8** %exn.slot, align 8, !dbg !34
  %7 = extractvalue { i8*, i32 } %5, 1, !dbg !34
  store i32 %7, i32* %ehselector.slot, align 4, !dbg !34
  call void @_ZdlPv(i8* noundef %call1) #7, !dbg !29
  br label %catch, !dbg !29

catch:                                            ; preds = %lpad2, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !33
  %8 = call i8* @__cxa_begin_catch(i8* %exn) #8, !dbg !33
  call void @__cxa_end_catch(), !dbg !35
  br label %try.cont, !dbg !35

try.cont:                                         ; preds = %catch, %invoke.cont4
  ret i32 0, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local noundef i32 @_Z6sourcev() #2

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #3

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %data) unnamed_addr #4 comdat align 2 !dbg !38 {
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

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #5

declare dso_local void @_Z4sinki(i32 noundef) #2

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @__cxa_end_catch()

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin allocsize(0) }
attributes #7 = { builtin nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_06.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/taint_analysis/dummy_source_sink", checksumkind: CSK_MD5, checksum: "0d1636d4ae4b4a59abba1fc79afb6de6")
!2 = !{!3}
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !4, line: 4, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !5, identifier: "_ZTS1S")
!4 = !DIFile(filename: "test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_06.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "0d1636d4ae4b4a59abba1fc79afb6de6")
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
!22 = !DILocalVariable(name: "data", scope: !18, file: !4, line: 10, type: !7)
!23 = !DILocation(line: 10, column: 7, scope: !18)
!24 = !DILocation(line: 10, column: 14, scope: !18)
!25 = !DILocalVariable(name: "s", scope: !26, file: !4, line: 12, type: !27)
!26 = distinct !DILexicalBlock(scope: !18, file: !4, line: 11, column: 7)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!28 = !DILocation(line: 12, column: 8, scope: !26)
!29 = !DILocation(line: 12, column: 12, scope: !26)
!30 = !DILocation(line: 12, column: 16, scope: !26)
!31 = !DILocation(line: 13, column: 10, scope: !26)
!32 = !DILocation(line: 13, column: 5, scope: !26)
!33 = !DILocation(line: 14, column: 3, scope: !26)
!34 = !DILocation(line: 17, column: 1, scope: !26)
!35 = !DILocation(line: 15, column: 3, scope: !36)
!36 = distinct !DILexicalBlock(scope: !18, file: !4, line: 14, column: 17)
!37 = !DILocation(line: 16, column: 3, scope: !18)
!38 = distinct !DISubprogram(name: "S", linkageName: "_ZN1SC2Ei", scope: !3, file: !4, line: 6, type: !9, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !8, retainedNodes: !21)
!39 = !DILocalVariable(name: "this", arg: 1, scope: !38, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!40 = !DILocation(line: 0, scope: !38)
!41 = !DILocalVariable(name: "data", arg: 2, scope: !38, file: !4, line: 6, type: !7)
!42 = !DILocation(line: 6, column: 9, scope: !38)
!43 = !DILocation(line: 6, column: 17, scope: !38)
!44 = !DILocation(line: 6, column: 22, scope: !38)
!45 = !DILocation(line: 6, column: 29, scope: !38)
