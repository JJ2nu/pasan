; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/static_fun_02.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/static_fun_02.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"psr.source\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [87 x i8] c"/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/static_fun_02.cpp\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (i32 (i32, i32*)* @_ZL3bariPi to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 1, i8* null }], section "llvm.metadata"

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  %C = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %A, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 42, i32* %A, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %B, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 0, i32* %B, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %C, metadata !18, metadata !DIExpression()), !dbg !19
  %0 = load i32, i32* %A, align 4, !dbg !20
  %call = call noundef i32 @_ZL3bariPi(i32 noundef %0, i32* noundef %B), !dbg !21
  store i32 %call, i32* %C, align 4, !dbg !19
  call void @_ZN12_GLOBAL__N_13fooERi(i32* noundef nonnull align 4 dereferenceable(4) %C), !dbg !22
  %1 = load i32, i32* %C, align 4, !dbg !23
  ret i32 %1, !dbg !24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef i32 @_ZL3bariPi(i32 noundef %A, i32* noundef %B) #2 !dbg !25 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca i32, align 4
  %B.addr = alloca i32*, align 8
  store i32 %A, i32* %A.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %A.addr, metadata !29, metadata !DIExpression()), !dbg !30
  store i32* %B, i32** %B.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %B.addr, metadata !31, metadata !DIExpression()), !dbg !32
  %0 = load i32*, i32** %B.addr, align 8, !dbg !33
  store i32 13, i32* %0, align 4, !dbg !34
  %1 = load i32, i32* %A.addr, align 4, !dbg !35
  %cmp = icmp eq i32 %1, 42, !dbg !37
  br i1 %cmp, label %if.then, label %if.end, !dbg !38

if.then:                                          ; preds = %entry
  store i32 13, i32* %retval, align 4, !dbg !39
  br label %return, !dbg !39

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %A.addr, align 4, !dbg !41
  store i32 %2, i32* %retval, align 4, !dbg !42
  br label %return, !dbg !42

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !43
  ret i32 %3, !dbg !43
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @_ZN12_GLOBAL__N_13fooERi(i32* noundef nonnull align 4 dereferenceable(4) %A) #2 !dbg !44 {
entry:
  %A.addr = alloca i32*, align 8
  store i32* %A, i32** %A.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %A.addr, metadata !49, metadata !DIExpression()), !dbg !50
  %A.addr1 = bitcast i32** %A.addr to i8*
  call void @llvm.var.annotation(i8* %A.addr1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i32 0, i32 0), i32 10, i8* null)
  %0 = load i32*, i32** %A.addr, align 8, !dbg !51
  store i32 13, i32* %0, align 4, !dbg !52
  ret void, !dbg !53
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #3

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/static_fun_02.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/TaintConfig/AttrConfig", checksumkind: CSK_MD5, checksum: "82b758eb509dc144bfbd59ad51dbc4e4")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 13, type: !10, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/TaintConfig/AttrConfig/static_fun_02.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "82b758eb509dc144bfbd59ad51dbc4e4")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "A", scope: !8, file: !9, line: 14, type: !12)
!15 = !DILocation(line: 14, column: 7, scope: !8)
!16 = !DILocalVariable(name: "B", scope: !8, file: !9, line: 15, type: !12)
!17 = !DILocation(line: 15, column: 7, scope: !8)
!18 = !DILocalVariable(name: "C", scope: !8, file: !9, line: 16, type: !12)
!19 = !DILocation(line: 16, column: 7, scope: !8)
!20 = !DILocation(line: 16, column: 15, scope: !8)
!21 = !DILocation(line: 16, column: 11, scope: !8)
!22 = !DILocation(line: 17, column: 3, scope: !8)
!23 = !DILocation(line: 18, column: 10, scope: !8)
!24 = !DILocation(line: 18, column: 3, scope: !8)
!25 = distinct !DISubprogram(name: "bar", linkageName: "_ZL3bariPi", scope: !9, file: !9, line: 1, type: !26, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !13)
!26 = !DISubroutineType(types: !27)
!27 = !{!12, !12, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!29 = !DILocalVariable(name: "A", arg: 1, scope: !25, file: !9, line: 1, type: !12)
!30 = !DILocation(line: 1, column: 54, scope: !25)
!31 = !DILocalVariable(name: "B", arg: 2, scope: !25, file: !9, line: 1, type: !28)
!32 = !DILocation(line: 1, column: 62, scope: !25)
!33 = !DILocation(line: 2, column: 4, scope: !25)
!34 = !DILocation(line: 2, column: 6, scope: !25)
!35 = !DILocation(line: 3, column: 7, scope: !36)
!36 = distinct !DILexicalBlock(scope: !25, file: !9, line: 3, column: 7)
!37 = !DILocation(line: 3, column: 9, scope: !36)
!38 = !DILocation(line: 3, column: 7, scope: !25)
!39 = !DILocation(line: 4, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !9, line: 3, column: 16)
!41 = !DILocation(line: 6, column: 10, scope: !25)
!42 = !DILocation(line: 6, column: 3, scope: !25)
!43 = !DILocation(line: 7, column: 1, scope: !25)
!44 = distinct !DISubprogram(name: "foo", linkageName: "_ZN12_GLOBAL__N_13fooERi", scope: !45, file: !9, line: 10, type: !46, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !13)
!45 = !DINamespace(scope: null)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48}
!48 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!49 = !DILocalVariable(name: "A", arg: 1, scope: !44, file: !9, line: 10, type: !48)
!50 = !DILocation(line: 10, column: 49, scope: !44)
!51 = !DILocation(line: 10, column: 54, scope: !44)
!52 = !DILocation(line: 10, column: 56, scope: !44)
!53 = !DILocation(line: 10, column: 62, scope: !44)
