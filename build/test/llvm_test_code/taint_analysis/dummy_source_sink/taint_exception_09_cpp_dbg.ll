; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_09.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_09.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

$_ZN1SC2Ei = comdat any

$__clang_call_terminate = comdat any

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %data = alloca i32, align 4
  %s = alloca %struct.S*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %s3 = alloca %struct.S*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata %struct.S** %s, metadata !24, metadata !DIExpression()), !dbg !27
  %call = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #7
          to label %invoke.cont unwind label %lpad, !dbg !28, !heapallocsite !3

invoke.cont:                                      ; preds = %entry
  %0 = bitcast i8* %call to %struct.S*, !dbg !28
  invoke void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 0)
          to label %invoke.cont2 unwind label %lpad1, !dbg !29

invoke.cont2:                                     ; preds = %invoke.cont
  store %struct.S* %0, %struct.S** %s, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata %struct.S** %s3, metadata !30, metadata !DIExpression()), !dbg !32
  %call6 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #7
          to label %invoke.cont5 unwind label %lpad4, !dbg !33, !heapallocsite !3

invoke.cont5:                                     ; preds = %invoke.cont2
  %1 = bitcast i8* %call6 to %struct.S*, !dbg !33
  invoke void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 0)
          to label %invoke.cont8 unwind label %lpad7, !dbg !34

invoke.cont8:                                     ; preds = %invoke.cont5
  store %struct.S* %1, %struct.S** %s3, align 8, !dbg !32
  br label %try.cont, !dbg !35

lpad:                                             ; preds = %invoke.cont10, %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null, !dbg !36
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !36
  store i8* %3, i8** %exn.slot, align 8, !dbg !36
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !36
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !36
  br label %catch14, !dbg !36

lpad1:                                            ; preds = %invoke.cont
  %5 = landingpad { i8*, i32 }
          catch i8* null, !dbg !36
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !36
  store i8* %6, i8** %exn.slot, align 8, !dbg !36
  %7 = extractvalue { i8*, i32 } %5, 1, !dbg !36
  store i32 %7, i32* %ehselector.slot, align 4, !dbg !36
  call void @_ZdlPv(i8* noundef %call) #8, !dbg !28
  br label %catch14, !dbg !28

lpad4:                                            ; preds = %invoke.cont2
  %8 = landingpad { i8*, i32 }
          catch i8* null, !dbg !37
  %9 = extractvalue { i8*, i32 } %8, 0, !dbg !37
  store i8* %9, i8** %exn.slot, align 8, !dbg !37
  %10 = extractvalue { i8*, i32 } %8, 1, !dbg !37
  store i32 %10, i32* %ehselector.slot, align 4, !dbg !37
  br label %catch, !dbg !37

lpad7:                                            ; preds = %invoke.cont5
  %11 = landingpad { i8*, i32 }
          catch i8* null, !dbg !37
  %12 = extractvalue { i8*, i32 } %11, 0, !dbg !37
  store i8* %12, i8** %exn.slot, align 8, !dbg !37
  %13 = extractvalue { i8*, i32 } %11, 1, !dbg !37
  store i32 %13, i32* %ehselector.slot, align 4, !dbg !37
  call void @_ZdlPv(i8* noundef %call6) #8, !dbg !33
  br label %catch, !dbg !33

catch:                                            ; preds = %lpad7, %lpad4
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !35
  %14 = call i8* @__cxa_begin_catch(i8* %exn) #9, !dbg !35
  %call11 = invoke noundef i32 @_Z6sourcev()
          to label %invoke.cont10 unwind label %lpad9, !dbg !38

invoke.cont10:                                    ; preds = %catch
  store i32 %call11, i32* %data, align 4, !dbg !40
  invoke void @__cxa_end_catch()
          to label %invoke.cont12 unwind label %lpad, !dbg !41

invoke.cont12:                                    ; preds = %invoke.cont10
  br label %try.cont, !dbg !41

try.cont:                                         ; preds = %invoke.cont12, %invoke.cont8
  br label %try.cont16, !dbg !42

lpad9:                                            ; preds = %catch
  %15 = landingpad { i8*, i32 }
          catch i8* null, !dbg !43
  %16 = extractvalue { i8*, i32 } %15, 0, !dbg !43
  store i8* %16, i8** %exn.slot, align 8, !dbg !43
  %17 = extractvalue { i8*, i32 } %15, 1, !dbg !43
  store i32 %17, i32* %ehselector.slot, align 4, !dbg !43
  invoke void @__cxa_end_catch()
          to label %invoke.cont13 unwind label %terminate.lpad, !dbg !41

invoke.cont13:                                    ; preds = %lpad9
  br label %catch14, !dbg !41

catch14:                                          ; preds = %invoke.cont13, %lpad1, %lpad
  %exn15 = load i8*, i8** %exn.slot, align 8, !dbg !42
  %18 = call i8* @__cxa_begin_catch(i8* %exn15) #9, !dbg !42
  call void @__cxa_end_catch(), !dbg !44
  br label %try.cont16, !dbg !44

try.cont16:                                       ; preds = %catch14, %try.cont
  %19 = load i32, i32* %data, align 4, !dbg !46
  call void @_Z4sinki(i32 noundef %19), !dbg !47
  ret i32 0, !dbg !48

terminate.lpad:                                   ; preds = %lpad9
  %20 = landingpad { i8*, i32 }
          catch i8* null, !dbg !41
  %21 = extractvalue { i8*, i32 } %20, 0, !dbg !41
  call void @__clang_call_terminate(i8* %21) #10, !dbg !41
  unreachable, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #2

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %data) unnamed_addr #3 comdat align 2 !dbg !49 {
entry:
  %this.addr = alloca %struct.S*, align 8
  %data.addr = alloca i32, align 4
  store %struct.S* %this, %struct.S** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.S** %this.addr, metadata !50, metadata !DIExpression()), !dbg !51
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !52, metadata !DIExpression()), !dbg !53
  %this1 = load %struct.S*, %struct.S** %this.addr, align 8
  %data2 = getelementptr inbounds %struct.S, %struct.S* %this1, i32 0, i32 0, !dbg !54
  %0 = load i32, i32* %data.addr, align 4, !dbg !55
  store i32 %0, i32* %data2, align 4, !dbg !54
  ret void, !dbg !56
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #4

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local noundef i32 @_Z6sourcev() #5

declare dso_local void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #6 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #9
  call void @_ZSt9terminatev() #10
  unreachable
}

declare dso_local void @_ZSt9terminatev()

declare dso_local void @_Z4sinki(i32 noundef) #5

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { builtin nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_09.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/taint_analysis/dummy_source_sink", checksumkind: CSK_MD5, checksum: "8456252dfcd108eb8e132de752591fea")
!2 = !{!3}
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !4, line: 4, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !5, identifier: "_ZTS1S")
!4 = !DIFile(filename: "test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_09.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "8456252dfcd108eb8e132de752591fea")
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
!24 = !DILocalVariable(name: "s", scope: !25, file: !4, line: 12, type: !26)
!25 = distinct !DILexicalBlock(scope: !18, file: !4, line: 11, column: 7)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!27 = !DILocation(line: 12, column: 8, scope: !25)
!28 = !DILocation(line: 12, column: 12, scope: !25)
!29 = !DILocation(line: 12, column: 16, scope: !25)
!30 = !DILocalVariable(name: "s", scope: !31, file: !4, line: 14, type: !26)
!31 = distinct !DILexicalBlock(scope: !25, file: !4, line: 13, column: 9)
!32 = !DILocation(line: 14, column: 10, scope: !31)
!33 = !DILocation(line: 14, column: 14, scope: !31)
!34 = !DILocation(line: 14, column: 18, scope: !31)
!35 = !DILocation(line: 15, column: 5, scope: !31)
!36 = !DILocation(line: 22, column: 1, scope: !25)
!37 = !DILocation(line: 22, column: 1, scope: !31)
!38 = !DILocation(line: 16, column: 14, scope: !39)
!39 = distinct !DILexicalBlock(scope: !25, file: !4, line: 15, column: 19)
!40 = !DILocation(line: 16, column: 12, scope: !39)
!41 = !DILocation(line: 17, column: 5, scope: !39)
!42 = !DILocation(line: 18, column: 3, scope: !25)
!43 = !DILocation(line: 22, column: 1, scope: !39)
!44 = !DILocation(line: 19, column: 3, scope: !45)
!45 = distinct !DILexicalBlock(scope: !18, file: !4, line: 18, column: 17)
!46 = !DILocation(line: 20, column: 8, scope: !18)
!47 = !DILocation(line: 20, column: 3, scope: !18)
!48 = !DILocation(line: 21, column: 3, scope: !18)
!49 = distinct !DISubprogram(name: "S", linkageName: "_ZN1SC2Ei", scope: !3, file: !4, line: 6, type: !9, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !8, retainedNodes: !21)
!50 = !DILocalVariable(name: "this", arg: 1, scope: !49, type: !26, flags: DIFlagArtificial | DIFlagObjectPointer)
!51 = !DILocation(line: 0, scope: !49)
!52 = !DILocalVariable(name: "data", arg: 2, scope: !49, file: !4, line: 6, type: !7)
!53 = !DILocation(line: 6, column: 9, scope: !49)
!54 = !DILocation(line: 6, column: 17, scope: !49)
!55 = !DILocation(line: 6, column: 22, scope: !49)
!56 = !DILocation(line: 6, column: 29, scope: !49)
