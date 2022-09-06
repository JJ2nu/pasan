; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/fun_member_02.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/fun_member_02.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i32 }

$_ZN1XC2Ei = comdat any

$_ZN1X11returnMagicEv = comdat any

$_ZN1X5sanitEv = comdat any

$_ZN1XD2Ev = comdat any

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [11 x i8] c"psr.source\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [87 x i8] c"/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/fun_member_02.cpp\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [10 x i8] c"V is: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"psr.sanitizer\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (void (%struct.X*)* @_ZN1X5sanitEv to i8*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* null }], section "llvm.metadata"

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !230 {
entry:
  %retval = alloca i32, align 4
  %V = alloca %struct.X, align 4
  %W = alloca %struct.X, align 4
  %Y = alloca %struct.X, align 4
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.X* %V, metadata !232, metadata !DIExpression()), !dbg !233
  call void @_ZN1XC2Ei(%struct.X* noundef nonnull align 4 dereferenceable(4) %V, i32 noundef 13), !dbg !233
  call void @llvm.dbg.declare(metadata %struct.X* %W, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = bitcast %struct.X* %W to i8*, !dbg !236
  %1 = bitcast %struct.X* %V to i8*, !dbg !236
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 %1, i64 4, i1 false), !dbg !236
  call void @llvm.dbg.declare(metadata %struct.X* %Y, metadata !237, metadata !DIExpression()), !dbg !238
  %call = invoke noundef i32 @_ZN1X11returnMagicEv()
          to label %invoke.cont unwind label %lpad, !dbg !239

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN1XC2Ei(%struct.X* noundef nonnull align 4 dereferenceable(4) %Y, i32 noundef %call)
          to label %invoke.cont1 unwind label %lpad, !dbg !238

invoke.cont1:                                     ; preds = %invoke.cont
  invoke void @_ZN1X5sanitEv(%struct.X* noundef nonnull align 4 dereferenceable(4) %Y)
          to label %invoke.cont3 unwind label %lpad2, !dbg !240

invoke.cont3:                                     ; preds = %invoke.cont1
  %V4 = getelementptr inbounds %struct.X, %struct.X* %W, i32 0, i32 0, !dbg !241
  %2 = bitcast i32* %V4 to i8*, !dbg !241
  %3 = call i8* @llvm.ptr.annotation.p0i8(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 11, i8* null), !dbg !241
  %4 = bitcast i8* %3 to i32*, !dbg !241
  %5 = load i32, i32* %4, align 4, !dbg !241
  store i32 %5, i32* %retval, align 4, !dbg !242
  call void @_ZN1XD2Ev(%struct.X* noundef nonnull align 4 dereferenceable(4) %Y) #9, !dbg !243
  call void @_ZN1XD2Ev(%struct.X* noundef nonnull align 4 dereferenceable(4) %W) #9, !dbg !243
  call void @_ZN1XD2Ev(%struct.X* noundef nonnull align 4 dereferenceable(4) %V) #9, !dbg !243
  %6 = load i32, i32* %retval, align 4, !dbg !243
  ret i32 %6, !dbg !243

lpad:                                             ; preds = %invoke.cont, %entry
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !243
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !243
  store i8* %8, i8** %exn.slot, align 8, !dbg !243
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !243
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !243
  br label %ehcleanup, !dbg !243

lpad2:                                            ; preds = %invoke.cont1
  %10 = landingpad { i8*, i32 }
          cleanup, !dbg !243
  %11 = extractvalue { i8*, i32 } %10, 0, !dbg !243
  store i8* %11, i8** %exn.slot, align 8, !dbg !243
  %12 = extractvalue { i8*, i32 } %10, 1, !dbg !243
  store i32 %12, i32* %ehselector.slot, align 4, !dbg !243
  call void @_ZN1XD2Ev(%struct.X* noundef nonnull align 4 dereferenceable(4) %Y) #9, !dbg !243
  br label %ehcleanup, !dbg !243

ehcleanup:                                        ; preds = %lpad2, %lpad
  call void @_ZN1XD2Ev(%struct.X* noundef nonnull align 4 dereferenceable(4) %W) #9, !dbg !243
  call void @_ZN1XD2Ev(%struct.X* noundef nonnull align 4 dereferenceable(4) %V) #9, !dbg !243
  br label %eh.resume, !dbg !243

eh.resume:                                        ; preds = %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !243
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !243
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !243
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !243
  resume { i8*, i32 } %lpad.val6, !dbg !243
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1XC2Ei(%struct.X* noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %V) unnamed_addr #2 comdat align 2 !dbg !244 {
entry:
  %this.addr = alloca %struct.X*, align 8
  %V.addr = alloca i32, align 4
  store %struct.X* %this, %struct.X** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.X** %this.addr, metadata !245, metadata !DIExpression()), !dbg !247
  store i32 %V, i32* %V.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %V.addr, metadata !248, metadata !DIExpression()), !dbg !249
  %this1 = load %struct.X*, %struct.X** %this.addr, align 8
  %V2 = getelementptr inbounds %struct.X, %struct.X* %this1, i32 0, i32 0, !dbg !250
  %0 = bitcast i32* %V2 to i8*, !dbg !250
  %1 = call i8* @llvm.ptr.annotation.p0i8(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 11, i8* null), !dbg !250
  %2 = bitcast i8* %1 to i32*, !dbg !250
  %3 = load i32, i32* %V.addr, align 4, !dbg !251
  store i32 %3, i32* %2, align 4, !dbg !250
  ret void, !dbg !252
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN1X11returnMagicEv() #4 comdat align 2 !dbg !253 {
entry:
  ret i32 42, !dbg !254
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1X5sanitEv(%struct.X* noundef nonnull align 4 dereferenceable(4) %this) #5 comdat align 2 !dbg !255 {
entry:
  %this.addr = alloca %struct.X*, align 8
  store %struct.X* %this, %struct.X** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.X** %this.addr, metadata !256, metadata !DIExpression()), !dbg !257
  %this1 = load %struct.X*, %struct.X** %this.addr, align 8
  %V = getelementptr inbounds %struct.X, %struct.X* %this1, i32 0, i32 0, !dbg !258
  %0 = bitcast i32* %V to i8*, !dbg !258
  %1 = call i8* @llvm.ptr.annotation.p0i8(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 11, i8* null), !dbg !258
  %2 = bitcast i8* %1 to i32*, !dbg !258
  %3 = load i32, i32* %2, align 4, !dbg !258
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef %3), !dbg !259
  ret void, !dbg !260
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare i8* @llvm.ptr.annotation.p0i8(i8*, i8*, i8*, i32, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1XD2Ev(%struct.X* noundef nonnull align 4 dereferenceable(4) %this) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !261 {
entry:
  %this.addr = alloca %struct.X*, align 8
  store %struct.X* %this, %struct.X** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.X** %this.addr, metadata !262, metadata !DIExpression()), !dbg !263
  %this1 = load %struct.X*, %struct.X** %this.addr, align 8
  %V = getelementptr inbounds %struct.X, %struct.X* %this1, i32 0, i32 0, !dbg !264
  %0 = bitcast i32* %V to i8*, !dbg !264
  %1 = call i8* @llvm.ptr.annotation.p0i8(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 11, i8* null), !dbg !264
  %2 = bitcast i8* %1 to i32*, !dbg !264
  %3 = load i32, i32* %2, align 4, !dbg !264
  %call = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef %3)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !266

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !267

terminate.lpad:                                   ; preds = %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null, !dbg !266
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !266
  call void @__clang_call_terminate(i8* %5) #10, !dbg !266
  unreachable, !dbg !266
}

declare dso_local i32 @printf(i8* noundef, ...) #7

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #8 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #9
  call void @_ZSt9terminatev() #10
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, imports: !28, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/fun_member_02.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/TaintConfig/AttrConfig", checksumkind: CSK_MD5, checksum: "ec20df54df1f1643ae0ad8b3733623e1")
!2 = !{!3}
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X", file: !4, line: 3, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !5, identifier: "_ZTS1X")
!4 = !DIFile(filename: "test/llvm_test_code/TaintConfig/AttrConfig/fun_member_02.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "ec20df54df1f1643ae0ad8b3733623e1")
!5 = !{!6, !8, !12, !17, !21, !24, !25}
!6 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !3, file: !4, line: 11, baseType: !7, size: 32)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "X", scope: !3, file: !4, line: 4, type: !9, scopeLine: 4, flags: DIFlagPrototyped, spFlags: 0)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !7}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!12 = !DISubprogram(name: "X", scope: !3, file: !4, line: 5, type: !13, scopeLine: 5, flags: DIFlagPrototyped, spFlags: 0)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !11, !15}
!15 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3)
!17 = !DISubprogram(name: "operator=", linkageName: "_ZN1XaSERKS_", scope: !3, file: !4, line: 6, type: !18, scopeLine: 6, flags: DIFlagPrototyped, spFlags: 0)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !11, !15}
!20 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3, size: 64)
!21 = !DISubprogram(name: "~X", scope: !3, file: !4, line: 7, type: !22, scopeLine: 7, flags: DIFlagPrototyped, spFlags: 0)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !11}
!24 = !DISubprogram(name: "sanit", linkageName: "_ZN1X5sanitEv", scope: !3, file: !4, line: 8, type: !22, scopeLine: 8, flags: DIFlagPrototyped, spFlags: 0)
!25 = !DISubprogram(name: "returnMagic", linkageName: "_ZN1X11returnMagicEv", scope: !3, file: !4, line: 9, type: !26, scopeLine: 9, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!26 = !DISubroutineType(types: !27)
!27 = !{!7}
!28 = !{!29, !36, !42, !47, !51, !53, !55, !57, !59, !66, !73, !80, !84, !88, !92, !101, !105, !107, !112, !118, !122, !129, !131, !133, !137, !141, !143, !147, !151, !153, !157, !159, !161, !165, !169, !173, !177, !181, !185, !187, !194, !198, !202, !207, !209, !211, !215, !219, !220, !221, !222, !223}
!29 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !31, file: !35, line: 98)
!30 = !DINamespace(name: "std", scope: null)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !32, line: 7, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !34, line: 49, size: 1728, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!35 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!36 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !37, file: !35, line: 99)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !38, line: 84, baseType: !39)
!38 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !40, line: 14, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !40, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !43, file: !35, line: 101)
!43 = !DISubprogram(name: "clearerr", scope: !38, file: !38, line: 786, type: !44, flags: DIFlagPrototyped, spFlags: 0)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!47 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !48, file: !35, line: 102)
!48 = !DISubprogram(name: "fclose", scope: !38, file: !38, line: 178, type: !49, flags: DIFlagPrototyped, spFlags: 0)
!49 = !DISubroutineType(types: !50)
!50 = !{!7, !46}
!51 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !52, file: !35, line: 103)
!52 = !DISubprogram(name: "feof", scope: !38, file: !38, line: 788, type: !49, flags: DIFlagPrototyped, spFlags: 0)
!53 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !54, file: !35, line: 104)
!54 = !DISubprogram(name: "ferror", scope: !38, file: !38, line: 790, type: !49, flags: DIFlagPrototyped, spFlags: 0)
!55 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !56, file: !35, line: 105)
!56 = !DISubprogram(name: "fflush", scope: !38, file: !38, line: 230, type: !49, flags: DIFlagPrototyped, spFlags: 0)
!57 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !58, file: !35, line: 106)
!58 = !DISubprogram(name: "fgetc", scope: !38, file: !38, line: 513, type: !49, flags: DIFlagPrototyped, spFlags: 0)
!59 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !60, file: !35, line: 107)
!60 = !DISubprogram(name: "fgetpos", scope: !38, file: !38, line: 760, type: !61, flags: DIFlagPrototyped, spFlags: 0)
!61 = !DISubroutineType(types: !62)
!62 = !{!7, !63, !64}
!63 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!66 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !67, file: !35, line: 108)
!67 = !DISubprogram(name: "fgets", scope: !38, file: !38, line: 592, type: !68, flags: DIFlagPrototyped, spFlags: 0)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !72, !7, !63}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!73 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !74, file: !35, line: 109)
!74 = !DISubprogram(name: "fopen", scope: !38, file: !38, line: 258, type: !75, flags: DIFlagPrototyped, spFlags: 0)
!75 = !DISubroutineType(types: !76)
!76 = !{!46, !77, !77}
!77 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !81, file: !35, line: 110)
!81 = !DISubprogram(name: "fprintf", scope: !38, file: !38, line: 350, type: !82, flags: DIFlagPrototyped, spFlags: 0)
!82 = !DISubroutineType(types: !83)
!83 = !{!7, !63, !77, null}
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !85, file: !35, line: 111)
!85 = !DISubprogram(name: "fputc", scope: !38, file: !38, line: 549, type: !86, flags: DIFlagPrototyped, spFlags: 0)
!86 = !DISubroutineType(types: !87)
!87 = !{!7, !7, !46}
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !89, file: !35, line: 112)
!89 = !DISubprogram(name: "fputs", scope: !38, file: !38, line: 655, type: !90, flags: DIFlagPrototyped, spFlags: 0)
!90 = !DISubroutineType(types: !91)
!91 = !{!7, !77, !63}
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !93, file: !35, line: 113)
!93 = !DISubprogram(name: "fread", scope: !38, file: !38, line: 675, type: !94, flags: DIFlagPrototyped, spFlags: 0)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !99, !96, !96, !63}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 46, baseType: !98)
!97 = !DIFile(filename: "/usr/local/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!98 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !102, file: !35, line: 114)
!102 = !DISubprogram(name: "freopen", scope: !38, file: !38, line: 265, type: !103, flags: DIFlagPrototyped, spFlags: 0)
!103 = !DISubroutineType(types: !104)
!104 = !{!46, !77, !77, !63}
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !106, file: !35, line: 115)
!106 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !38, file: !38, line: 434, type: !82, flags: DIFlagPrototyped, spFlags: 0)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !108, file: !35, line: 116)
!108 = !DISubprogram(name: "fseek", scope: !38, file: !38, line: 713, type: !109, flags: DIFlagPrototyped, spFlags: 0)
!109 = !DISubroutineType(types: !110)
!110 = !{!7, !46, !111, !7}
!111 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !113, file: !35, line: 117)
!113 = !DISubprogram(name: "fsetpos", scope: !38, file: !38, line: 765, type: !114, flags: DIFlagPrototyped, spFlags: 0)
!114 = !DISubroutineType(types: !115)
!115 = !{!7, !46, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !119, file: !35, line: 118)
!119 = !DISubprogram(name: "ftell", scope: !38, file: !38, line: 718, type: !120, flags: DIFlagPrototyped, spFlags: 0)
!120 = !DISubroutineType(types: !121)
!121 = !{!111, !46}
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !123, file: !35, line: 119)
!123 = !DISubprogram(name: "fwrite", scope: !38, file: !38, line: 681, type: !124, flags: DIFlagPrototyped, spFlags: 0)
!124 = !DISubroutineType(types: !125)
!125 = !{!96, !126, !96, !96, !63}
!126 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !130, file: !35, line: 120)
!130 = !DISubprogram(name: "getc", scope: !38, file: !38, line: 514, type: !49, flags: DIFlagPrototyped, spFlags: 0)
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !132, file: !35, line: 121)
!132 = !DISubprogram(name: "getchar", scope: !38, file: !38, line: 520, type: !26, flags: DIFlagPrototyped, spFlags: 0)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !134, file: !35, line: 126)
!134 = !DISubprogram(name: "perror", scope: !38, file: !38, line: 804, type: !135, flags: DIFlagPrototyped, spFlags: 0)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !78}
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !138, file: !35, line: 127)
!138 = !DISubprogram(name: "printf", scope: !38, file: !38, line: 356, type: !139, flags: DIFlagPrototyped, spFlags: 0)
!139 = !DISubroutineType(types: !140)
!140 = !{!7, !77, null}
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !142, file: !35, line: 128)
!142 = !DISubprogram(name: "putc", scope: !38, file: !38, line: 550, type: !86, flags: DIFlagPrototyped, spFlags: 0)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !144, file: !35, line: 129)
!144 = !DISubprogram(name: "putchar", scope: !38, file: !38, line: 556, type: !145, flags: DIFlagPrototyped, spFlags: 0)
!145 = !DISubroutineType(types: !146)
!146 = !{!7, !7}
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !148, file: !35, line: 130)
!148 = !DISubprogram(name: "puts", scope: !38, file: !38, line: 661, type: !149, flags: DIFlagPrototyped, spFlags: 0)
!149 = !DISubroutineType(types: !150)
!150 = !{!7, !78}
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !152, file: !35, line: 131)
!152 = !DISubprogram(name: "remove", scope: !38, file: !38, line: 152, type: !149, flags: DIFlagPrototyped, spFlags: 0)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !154, file: !35, line: 132)
!154 = !DISubprogram(name: "rename", scope: !38, file: !38, line: 154, type: !155, flags: DIFlagPrototyped, spFlags: 0)
!155 = !DISubroutineType(types: !156)
!156 = !{!7, !78, !78}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !158, file: !35, line: 133)
!158 = !DISubprogram(name: "rewind", scope: !38, file: !38, line: 723, type: !44, flags: DIFlagPrototyped, spFlags: 0)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !160, file: !35, line: 134)
!160 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !38, file: !38, line: 437, type: !139, flags: DIFlagPrototyped, spFlags: 0)
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !162, file: !35, line: 135)
!162 = !DISubprogram(name: "setbuf", scope: !38, file: !38, line: 328, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !63, !72}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !166, file: !35, line: 136)
!166 = !DISubprogram(name: "setvbuf", scope: !38, file: !38, line: 332, type: !167, flags: DIFlagPrototyped, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{!7, !63, !72, !7, !96}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !170, file: !35, line: 137)
!170 = !DISubprogram(name: "sprintf", scope: !38, file: !38, line: 358, type: !171, flags: DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{!7, !72, !77, null}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !174, file: !35, line: 138)
!174 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !38, file: !38, line: 439, type: !175, flags: DIFlagPrototyped, spFlags: 0)
!175 = !DISubroutineType(types: !176)
!176 = !{!7, !77, !77, null}
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !178, file: !35, line: 139)
!178 = !DISubprogram(name: "tmpfile", scope: !38, file: !38, line: 188, type: !179, flags: DIFlagPrototyped, spFlags: 0)
!179 = !DISubroutineType(types: !180)
!180 = !{!46}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !182, file: !35, line: 141)
!182 = !DISubprogram(name: "tmpnam", scope: !38, file: !38, line: 205, type: !183, flags: DIFlagPrototyped, spFlags: 0)
!183 = !DISubroutineType(types: !184)
!184 = !{!70, !70}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !186, file: !35, line: 143)
!186 = !DISubprogram(name: "ungetc", scope: !38, file: !38, line: 668, type: !86, flags: DIFlagPrototyped, spFlags: 0)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !188, file: !35, line: 144)
!188 = !DISubprogram(name: "vfprintf", scope: !38, file: !38, line: 365, type: !189, flags: DIFlagPrototyped, spFlags: 0)
!189 = !DISubroutineType(types: !190)
!190 = !{!7, !63, !77, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !193, size: 192, flags: DIFlagFwdDecl, identifier: "_ZTS13__va_list_tag")
!193 = !DIFile(filename: "test/llvm_test_code/TaintConfig/AttrConfig/fun_member_02.cpp", directory: "/home/jinu/Desktop/phasar")
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !195, file: !35, line: 145)
!195 = !DISubprogram(name: "vprintf", scope: !38, file: !38, line: 371, type: !196, flags: DIFlagPrototyped, spFlags: 0)
!196 = !DISubroutineType(types: !197)
!197 = !{!7, !77, !191}
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !199, file: !35, line: 146)
!199 = !DISubprogram(name: "vsprintf", scope: !38, file: !38, line: 373, type: !200, flags: DIFlagPrototyped, spFlags: 0)
!200 = !DISubroutineType(types: !201)
!201 = !{!7, !72, !77, !191}
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !204, file: !35, line: 175)
!203 = !DINamespace(name: "__gnu_cxx", scope: null)
!204 = !DISubprogram(name: "snprintf", scope: !38, file: !38, line: 378, type: !205, flags: DIFlagPrototyped, spFlags: 0)
!205 = !DISubroutineType(types: !206)
!206 = !{!7, !72, !96, !77, null}
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !208, file: !35, line: 176)
!208 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !38, file: !38, line: 479, type: !189, flags: DIFlagPrototyped, spFlags: 0)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !210, file: !35, line: 177)
!210 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !38, file: !38, line: 484, type: !196, flags: DIFlagPrototyped, spFlags: 0)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !212, file: !35, line: 178)
!212 = !DISubprogram(name: "vsnprintf", scope: !38, file: !38, line: 382, type: !213, flags: DIFlagPrototyped, spFlags: 0)
!213 = !DISubroutineType(types: !214)
!214 = !{!7, !72, !96, !77, !191}
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !216, file: !35, line: 179)
!216 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !38, file: !38, line: 487, type: !217, flags: DIFlagPrototyped, spFlags: 0)
!217 = !DISubroutineType(types: !218)
!218 = !{!7, !77, !77, !191}
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !204, file: !35, line: 185)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !208, file: !35, line: 186)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !210, file: !35, line: 187)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !212, file: !35, line: 188)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !30, entity: !216, file: !35, line: 189)
!224 = !{i32 7, !"Dwarf Version", i32 5}
!225 = !{i32 2, !"Debug Info Version", i32 3}
!226 = !{i32 1, !"wchar_size", i32 4}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!230 = distinct !DISubprogram(name: "main", scope: !4, file: !4, line: 14, type: !26, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !231)
!231 = !{}
!232 = !DILocalVariable(name: "V", scope: !230, file: !4, line: 15, type: !3)
!233 = !DILocation(line: 15, column: 5, scope: !230)
!234 = !DILocalVariable(name: "W", scope: !230, file: !4, line: 16, type: !3)
!235 = !DILocation(line: 16, column: 5, scope: !230)
!236 = !DILocation(line: 16, column: 9, scope: !230)
!237 = !DILocalVariable(name: "Y", scope: !230, file: !4, line: 17, type: !3)
!238 = !DILocation(line: 17, column: 5, scope: !230)
!239 = !DILocation(line: 17, column: 7, scope: !230)
!240 = !DILocation(line: 18, column: 5, scope: !230)
!241 = !DILocation(line: 19, column: 12, scope: !230)
!242 = !DILocation(line: 19, column: 3, scope: !230)
!243 = !DILocation(line: 20, column: 1, scope: !230)
!244 = distinct !DISubprogram(name: "X", linkageName: "_ZN1XC2Ei", scope: !3, file: !4, line: 4, type: !9, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !8, retainedNodes: !231)
!245 = !DILocalVariable(name: "this", arg: 1, scope: !244, type: !246, flags: DIFlagArtificial | DIFlagObjectPointer)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!247 = !DILocation(line: 0, scope: !244)
!248 = !DILocalVariable(name: "V", arg: 2, scope: !244, file: !4, line: 4, type: !7)
!249 = !DILocation(line: 4, column: 9, scope: !244)
!250 = !DILocation(line: 4, column: 14, scope: !244)
!251 = !DILocation(line: 4, column: 16, scope: !244)
!252 = !DILocation(line: 4, column: 20, scope: !244)
!253 = distinct !DISubprogram(name: "returnMagic", linkageName: "_ZN1X11returnMagicEv", scope: !3, file: !4, line: 9, type: !26, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !25, retainedNodes: !231)
!254 = !DILocation(line: 9, column: 30, scope: !253)
!255 = distinct !DISubprogram(name: "sanit", linkageName: "_ZN1X5sanitEv", scope: !3, file: !4, line: 8, type: !22, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !24, retainedNodes: !231)
!256 = !DILocalVariable(name: "this", arg: 1, scope: !255, type: !246, flags: DIFlagArtificial | DIFlagObjectPointer)
!257 = !DILocation(line: 0, scope: !255)
!258 = !DILocation(line: 8, column: 76, scope: !255)
!259 = !DILocation(line: 8, column: 55, scope: !255)
!260 = !DILocation(line: 8, column: 80, scope: !255)
!261 = distinct !DISubprogram(name: "~X", linkageName: "_ZN1XD2Ev", scope: !3, file: !4, line: 7, type: !22, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !21, retainedNodes: !231)
!262 = !DILocalVariable(name: "this", arg: 1, scope: !261, type: !246, flags: DIFlagArtificial | DIFlagObjectPointer)
!263 = !DILocation(line: 0, scope: !261)
!264 = !DILocation(line: 7, column: 63, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !4, line: 7, column: 40)
!266 = !DILocation(line: 7, column: 42, scope: !265)
!267 = !DILocation(line: 7, column: 67, scope: !261)
