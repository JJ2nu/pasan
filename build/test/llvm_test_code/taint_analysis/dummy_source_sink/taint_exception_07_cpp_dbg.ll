; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_07.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_07.cpp"
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
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !22, metadata !DIExpression()), !dbg !23
  %call = call noundef i32 @_Z6sourcev(), !dbg !24
  store i32 %call, i32* %data, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata %struct.S** %s, metadata !25, metadata !DIExpression()), !dbg !28
  %call1 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #7
          to label %invoke.cont unwind label %lpad, !dbg !29, !heapallocsite !3

invoke.cont:                                      ; preds = %entry
  %0 = bitcast i8* %call1 to %struct.S*, !dbg !29
  invoke void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 0)
          to label %invoke.cont3 unwind label %lpad2, !dbg !30

invoke.cont3:                                     ; preds = %invoke.cont
  store %struct.S* %0, %struct.S** %s, align 8, !dbg !28
  br label %try.cont, !dbg !31

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null, !dbg !32
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !32
  store i8* %2, i8** %exn.slot, align 8, !dbg !32
  %3 = extractvalue { i8*, i32 } %1, 1, !dbg !32
  store i32 %3, i32* %ehselector.slot, align 4, !dbg !32
  br label %catch, !dbg !32

lpad2:                                            ; preds = %invoke.cont
  %4 = landingpad { i8*, i32 }
          catch i8* null, !dbg !32
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !32
  store i8* %5, i8** %exn.slot, align 8, !dbg !32
  %6 = extractvalue { i8*, i32 } %4, 1, !dbg !32
  store i32 %6, i32* %ehselector.slot, align 4, !dbg !32
  call void @_ZdlPv(i8* noundef %call1) #8, !dbg !29
  br label %catch, !dbg !29

catch:                                            ; preds = %lpad2, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !31
  %7 = call i8* @__cxa_begin_catch(i8* %exn) #9, !dbg !31
  %8 = load i32, i32* %data, align 4, !dbg !33
  invoke void @_Z4sinki(i32 noundef %8)
          to label %invoke.cont5 unwind label %lpad4, !dbg !35

invoke.cont5:                                     ; preds = %catch
  call void @__cxa_end_catch(), !dbg !36
  br label %try.cont, !dbg !36

try.cont:                                         ; preds = %invoke.cont5, %invoke.cont3
  ret i32 0, !dbg !37

lpad4:                                            ; preds = %catch
  %9 = landingpad { i8*, i32 }
          cleanup, !dbg !38
  %10 = extractvalue { i8*, i32 } %9, 0, !dbg !38
  store i8* %10, i8** %exn.slot, align 8, !dbg !38
  %11 = extractvalue { i8*, i32 } %9, 1, !dbg !38
  store i32 %11, i32* %ehselector.slot, align 4, !dbg !38
  invoke void @__cxa_end_catch()
          to label %invoke.cont6 unwind label %terminate.lpad, !dbg !36

invoke.cont6:                                     ; preds = %lpad4
  br label %eh.resume, !dbg !36

eh.resume:                                        ; preds = %invoke.cont6
  %exn7 = load i8*, i8** %exn.slot, align 8, !dbg !36
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !36
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn7, 0, !dbg !36
  %lpad.val8 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !36
  resume { i8*, i32 } %lpad.val8, !dbg !36

terminate.lpad:                                   ; preds = %lpad4
  %12 = landingpad { i8*, i32 }
          catch i8* null, !dbg !36
  %13 = extractvalue { i8*, i32 } %12, 0, !dbg !36
  call void @__clang_call_terminate(i8* %13) #10, !dbg !36
  unreachable, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local noundef i32 @_Z6sourcev() #2

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #3

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %data) unnamed_addr #4 comdat align 2 !dbg !39 {
entry:
  %this.addr = alloca %struct.S*, align 8
  %data.addr = alloca i32, align 4
  store %struct.S* %this, %struct.S** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.S** %this.addr, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !42, metadata !DIExpression()), !dbg !43
  %this1 = load %struct.S*, %struct.S** %this.addr, align 8
  %data2 = getelementptr inbounds %struct.S, %struct.S* %this1, i32 0, i32 0, !dbg !44
  %0 = load i32, i32* %data.addr, align 4, !dbg !45
  store i32 %0, i32* %data2, align 4, !dbg !44
  ret void, !dbg !46
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #5

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_Z4sinki(i32 noundef) #2

declare dso_local void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #6 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #9
  call void @_ZSt9terminatev() #10
  unreachable
}

declare dso_local void @_ZSt9terminatev()

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { builtin nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_07.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/taint_analysis/dummy_source_sink", checksumkind: CSK_MD5, checksum: "b40690035e411daffa50df68de600ddf")
!2 = !{!3}
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !4, line: 4, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !5, identifier: "_ZTS1S")
!4 = !DIFile(filename: "test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_07.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "b40690035e411daffa50df68de600ddf")
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
!31 = !DILocation(line: 13, column: 3, scope: !26)
!32 = !DILocation(line: 17, column: 1, scope: !26)
!33 = !DILocation(line: 14, column: 10, scope: !34)
!34 = distinct !DILexicalBlock(scope: !18, file: !4, line: 13, column: 17)
!35 = !DILocation(line: 14, column: 5, scope: !34)
!36 = !DILocation(line: 15, column: 3, scope: !34)
!37 = !DILocation(line: 16, column: 3, scope: !18)
!38 = !DILocation(line: 17, column: 1, scope: !34)
!39 = distinct !DISubprogram(name: "S", linkageName: "_ZN1SC2Ei", scope: !3, file: !4, line: 6, type: !9, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !8, retainedNodes: !21)
!40 = !DILocalVariable(name: "this", arg: 1, scope: !39, type: !27, flags: DIFlagArtificial | DIFlagObjectPointer)
!41 = !DILocation(line: 0, scope: !39)
!42 = !DILocalVariable(name: "data", arg: 2, scope: !39, file: !4, line: 6, type: !7)
!43 = !DILocation(line: 6, column: 9, scope: !39)
!44 = !DILocation(line: 6, column: 17, scope: !39)
!45 = !DILocation(line: 6, column: 22, scope: !39)
!46 = !DILocation(line: 6, column: 29, scope: !39)
