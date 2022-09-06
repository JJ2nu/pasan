; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/dyn_mem.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/dyn_mem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Y = type { %struct.X, i32 }
%struct.X = type { i32, i32 }

@global = dso_local global i32 1, align 4, !dbg !0

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %memory = alloca i32*, align 8
  %y = alloca %struct.Y*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %j, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %k, metadata !21, metadata !DIExpression()), !dbg !22
  %0 = load i32, i32* %i, align 4, !dbg !23
  %1 = load i32, i32* %j, align 4, !dbg !24
  %add = add nsw i32 %0, %1, !dbg !25
  store i32 %add, i32* %k, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata i32** %a, metadata !26, metadata !DIExpression()), !dbg !28
  store i32* %i, i32** %a, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i32** %b, metadata !29, metadata !DIExpression()), !dbg !30
  store i32* %j, i32** %b, align 8, !dbg !30
  %2 = load i32*, i32** %b, align 8, !dbg !31
  store i32 42, i32* %2, align 4, !dbg !32
  call void @llvm.dbg.declare(metadata i32** %memory, metadata !33, metadata !DIExpression()), !dbg !34
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #4, !dbg !35, !heapallocsite !6
  %3 = bitcast i8* %call to i32*, !dbg !35
  store i32 13, i32* %3, align 4, !dbg !35
  store i32* %3, i32** %memory, align 8, !dbg !34
  %4 = load i32, i32* %i, align 4, !dbg !36
  %5 = load i32, i32* %j, align 4, !dbg !37
  %add1 = add nsw i32 %4, %5, !dbg !38
  %6 = load i32*, i32** %memory, align 8, !dbg !39
  %7 = load i32, i32* %6, align 4, !dbg !40
  %add2 = add nsw i32 %7, %add1, !dbg !40
  store i32 %add2, i32* %6, align 4, !dbg !40
  %8 = load i32, i32* %k, align 4, !dbg !41
  %9 = load i32*, i32** %memory, align 8, !dbg !42
  %10 = load i32, i32* %9, align 4, !dbg !43
  %add3 = add nsw i32 %10, %8, !dbg !43
  store i32 %add3, i32* %9, align 4, !dbg !43
  %11 = load i32*, i32** %memory, align 8, !dbg !44
  %isnull = icmp eq i32* %11, null, !dbg !45
  br i1 %isnull, label %delete.end, label %delete.notnull, !dbg !45

delete.notnull:                                   ; preds = %entry
  %12 = bitcast i32* %11 to i8*, !dbg !45
  call void @_ZdlPv(i8* noundef %12) #5, !dbg !45
  br label %delete.end, !dbg !45

delete.end:                                       ; preds = %delete.notnull, %entry
  call void @llvm.dbg.declare(metadata %struct.Y** %y, metadata !46, metadata !DIExpression()), !dbg !56
  %call4 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 12) #4, !dbg !57, !heapallocsite !48
  %13 = bitcast i8* %call4 to %struct.Y*, !dbg !57
  store %struct.Y* %13, %struct.Y** %y, align 8, !dbg !56
  %14 = load %struct.Y*, %struct.Y** %y, align 8, !dbg !58
  %isnull5 = icmp eq %struct.Y* %14, null, !dbg !59
  br i1 %isnull5, label %delete.end7, label %delete.notnull6, !dbg !59

delete.notnull6:                                  ; preds = %delete.end
  %15 = bitcast %struct.Y* %14 to i8*, !dbg !59
  call void @_ZdlPv(i8* noundef %15) #5, !dbg !59
  br label %delete.end7, !dbg !59

delete.end7:                                      ; preds = %delete.notnull6, %delete.end
  ret i32 0, !dbg !60
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #2

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #3

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { builtin allocsize(0) }
attributes #5 = { builtin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "global", scope: !2, file: !5, line: 10, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/dyn_mem.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/uninitialized_variables", checksumkind: CSK_MD5, checksum: "b3e579f1f2d2a64f7f4cd5ceca3a05e9")
!4 = !{!0}
!5 = !DIFile(filename: "test/llvm_test_code/uninitialized_variables/dyn_mem.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "b3e579f1f2d2a64f7f4cd5ceca3a05e9")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!13 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 12, type: !14, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!6}
!16 = !{}
!17 = !DILocalVariable(name: "i", scope: !13, file: !5, line: 13, type: !6)
!18 = !DILocation(line: 13, column: 7, scope: !13)
!19 = !DILocalVariable(name: "j", scope: !13, file: !5, line: 14, type: !6)
!20 = !DILocation(line: 14, column: 7, scope: !13)
!21 = !DILocalVariable(name: "k", scope: !13, file: !5, line: 15, type: !6)
!22 = !DILocation(line: 15, column: 7, scope: !13)
!23 = !DILocation(line: 15, column: 11, scope: !13)
!24 = !DILocation(line: 15, column: 15, scope: !13)
!25 = !DILocation(line: 15, column: 13, scope: !13)
!26 = !DILocalVariable(name: "a", scope: !13, file: !5, line: 16, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!28 = !DILocation(line: 16, column: 8, scope: !13)
!29 = !DILocalVariable(name: "b", scope: !13, file: !5, line: 17, type: !27)
!30 = !DILocation(line: 17, column: 8, scope: !13)
!31 = !DILocation(line: 18, column: 4, scope: !13)
!32 = !DILocation(line: 18, column: 6, scope: !13)
!33 = !DILocalVariable(name: "memory", scope: !13, file: !5, line: 19, type: !27)
!34 = !DILocation(line: 19, column: 8, scope: !13)
!35 = !DILocation(line: 19, column: 17, scope: !13)
!36 = !DILocation(line: 20, column: 14, scope: !13)
!37 = !DILocation(line: 20, column: 18, scope: !13)
!38 = !DILocation(line: 20, column: 16, scope: !13)
!39 = !DILocation(line: 20, column: 4, scope: !13)
!40 = !DILocation(line: 20, column: 11, scope: !13)
!41 = !DILocation(line: 21, column: 14, scope: !13)
!42 = !DILocation(line: 21, column: 4, scope: !13)
!43 = !DILocation(line: 21, column: 11, scope: !13)
!44 = !DILocation(line: 22, column: 10, scope: !13)
!45 = !DILocation(line: 22, column: 3, scope: !13)
!46 = !DILocalVariable(name: "y", scope: !13, file: !5, line: 23, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Y", file: !5, line: 6, size: 96, flags: DIFlagTypePassByValue, elements: !49, identifier: "_ZTS1Y")
!49 = !{!50, !55}
!50 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !48, baseType: !51, extraData: i32 0)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X", file: !5, line: 2, size: 64, flags: DIFlagTypePassByValue, elements: !52, identifier: "_ZTS1X")
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !51, file: !5, line: 3, baseType: !6, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !51, file: !5, line: 3, baseType: !6, size: 32, offset: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !48, file: !5, line: 7, baseType: !6, size: 32, offset: 64)
!56 = !DILocation(line: 23, column: 6, scope: !13)
!57 = !DILocation(line: 23, column: 10, scope: !13)
!58 = !DILocation(line: 24, column: 10, scope: !13)
!59 = !DILocation(line: 24, column: 3, scope: !13)
!60 = !DILocation(line: 25, column: 3, scope: !13)
