; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_05.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_05.cpp"
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
  call void @llvm.dbg.declare(metadata %struct.S** %s, metadata !24, metadata !DIExpression()), !dbg !27
  %call = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #7
          to label %invoke.cont unwind label %lpad, !dbg !28, !heapallocsite !3

invoke.cont:                                      ; preds = %entry
  %0 = bitcast i8* %call to %struct.S*, !dbg !28
  invoke void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 0)
          to label %invoke.cont2 unwind label %lpad1, !dbg !29

invoke.cont2:                                     ; preds = %invoke.cont
  store %struct.S* %0, %struct.S** %s, align 8, !dbg !27
  br label %try.cont, !dbg !30

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null, !dbg !31
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !31
  store i8* %2, i8** %exn.slot, align 8, !dbg !31
  %3 = extractvalue { i8*, i32 } %1, 1, !dbg !31
  store i32 %3, i32* %ehselector.slot, align 4, !dbg !31
  br label %catch, !dbg !31

lpad1:                                            ; preds = %invoke.cont
  %4 = landingpad { i8*, i32 }
          catch i8* null, !dbg !31
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !31
  store i8* %5, i8** %exn.slot, align 8, !dbg !31
  %6 = extractvalue { i8*, i32 } %4, 1, !dbg !31
  store i32 %6, i32* %ehselector.slot, align 4, !dbg !31
  call void @_ZdlPv(i8* noundef %call) #8, !dbg !28
  br label %catch, !dbg !28

catch:                                            ; preds = %lpad1, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !30
  %7 = call i8* @__cxa_begin_catch(i8* %exn) #9, !dbg !30
  %call5 = invoke noundef i32 @_Z6sourcev()
          to label %invoke.cont4 unwind label %lpad3, !dbg !32

invoke.cont4:                                     ; preds = %catch
  store i32 %call5, i32* %data, align 4, !dbg !34
  call void @__cxa_end_catch(), !dbg !35
  br label %try.cont, !dbg !35

try.cont:                                         ; preds = %invoke.cont4, %invoke.cont2
  %8 = load i32, i32* %data, align 4, !dbg !36
  call void @_Z4sinki(i32 noundef %8), !dbg !37
  ret i32 0, !dbg !38

lpad3:                                            ; preds = %catch
  %9 = landingpad { i8*, i32 }
          cleanup, !dbg !39
  %10 = extractvalue { i8*, i32 } %9, 0, !dbg !39
  store i8* %10, i8** %exn.slot, align 8, !dbg !39
  %11 = extractvalue { i8*, i32 } %9, 1, !dbg !39
  store i32 %11, i32* %ehselector.slot, align 4, !dbg !39
  invoke void @__cxa_end_catch()
          to label %invoke.cont6 unwind label %terminate.lpad, !dbg !35

invoke.cont6:                                     ; preds = %lpad3
  br label %eh.resume, !dbg !35

eh.resume:                                        ; preds = %invoke.cont6
  %exn7 = load i8*, i8** %exn.slot, align 8, !dbg !35
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !35
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn7, 0, !dbg !35
  %lpad.val8 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !35
  resume { i8*, i32 } %lpad.val8, !dbg !35

terminate.lpad:                                   ; preds = %lpad3
  %12 = landingpad { i8*, i32 }
          catch i8* null, !dbg !35
  %13 = extractvalue { i8*, i32 } %12, 0, !dbg !35
  call void @__clang_call_terminate(i8* %13) #10, !dbg !35
  unreachable, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #2

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %data) unnamed_addr #3 comdat align 2 !dbg !40 {
entry:
  %this.addr = alloca %struct.S*, align 8
  %data.addr = alloca i32, align 4
  store %struct.S* %this, %struct.S** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.S** %this.addr, metadata !41, metadata !DIExpression()), !dbg !42
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !43, metadata !DIExpression()), !dbg !44
  %this1 = load %struct.S*, %struct.S** %this.addr, align 8
  %data2 = getelementptr inbounds %struct.S, %struct.S* %this1, i32 0, i32 0, !dbg !45
  %0 = load i32, i32* %data.addr, align 4, !dbg !46
  store i32 %0, i32* %data2, align 4, !dbg !45
  ret void, !dbg !47
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
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_05.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/taint_analysis/dummy_source_sink", checksumkind: CSK_MD5, checksum: "8657fa04e80f33334a4245d8d0b4ea95")
!2 = !{!3}
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !4, line: 4, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !5, identifier: "_ZTS1S")
!4 = !DIFile(filename: "test/llvm_test_code/taint_analysis/dummy_source_sink/taint_exception_05.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "8657fa04e80f33334a4245d8d0b4ea95")
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
!30 = !DILocation(line: 13, column: 3, scope: !25)
!31 = !DILocation(line: 18, column: 1, scope: !25)
!32 = !DILocation(line: 14, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !18, file: !4, line: 13, column: 17)
!34 = !DILocation(line: 14, column: 10, scope: !33)
!35 = !DILocation(line: 15, column: 3, scope: !33)
!36 = !DILocation(line: 16, column: 8, scope: !18)
!37 = !DILocation(line: 16, column: 3, scope: !18)
!38 = !DILocation(line: 17, column: 3, scope: !18)
!39 = !DILocation(line: 18, column: 1, scope: !33)
!40 = distinct !DISubprogram(name: "S", linkageName: "_ZN1SC2Ei", scope: !3, file: !4, line: 6, type: !9, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !8, retainedNodes: !21)
!41 = !DILocalVariable(name: "this", arg: 1, scope: !40, type: !26, flags: DIFlagArtificial | DIFlagObjectPointer)
!42 = !DILocation(line: 0, scope: !40)
!43 = !DILocalVariable(name: "data", arg: 2, scope: !40, file: !4, line: 6, type: !7)
!44 = !DILocation(line: 6, column: 9, scope: !40)
!45 = !DILocation(line: 6, column: 17, scope: !40)
!46 = !DILocation(line: 6, column: 22, scope: !40)
!47 = !DILocation(line: 6, column: 29, scope: !40)