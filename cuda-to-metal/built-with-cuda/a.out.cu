

/*
 *  Global Switches
 */

#ifndef SAC_DO_CHECK
#define SAC_DO_CHECK                             1
#endif
#ifndef SAC_DO_CHECK_TYPE
#define SAC_DO_CHECK_TYPE                        0
#endif
#ifndef SAC_DO_CHECK_GPU
#define SAC_DO_CHECK_GPU                         1
#endif
#ifndef SAC_DO_CHECK_BOUNDARY
#define SAC_DO_CHECK_BOUNDARY                    0
#endif
#ifndef SAC_DO_CHECK_MALLOC
#define SAC_DO_CHECK_MALLOC                      0
#endif
#ifndef SAC_DO_CHECK_ERRNO
#define SAC_DO_CHECK_ERRNO                       0
#endif
#ifndef SAC_DO_CHECK_HEAP
#define SAC_DO_CHECK_HEAP                        0
#endif
#ifndef SAC_DO_CHECK_DISTMEM
#define SAC_DO_CHECK_DISTMEM                     0
#endif
#ifndef SAC_DO_CHECK_DISTMEMPHM
#define SAC_DO_CHECK_DISTMEMPHM                  0
#endif

#define SAC_DO_PHM                               0
#define SAC_DO_APS                               0
#define SAC_DO_DAO                               0
#define SAC_DO_MSCA                              0
#define SAC_DO_COMPILE_MODULE                    0

#ifndef SAC_DO_PROFILE
#define SAC_DO_PROFILE                           0
#endif
#ifndef SAC_DO_PROFILE_WITH
#define SAC_DO_PROFILE_WITH                      0
#endif
#ifndef SAC_DO_PROFILE_FUN
#define SAC_DO_PROFILE_FUN                       0
#endif
#ifndef SAC_DO_PROFILE_INL
#define SAC_DO_PROFILE_INL                       0
#endif
#ifndef SAC_DO_PROFILE_LIB
#define SAC_DO_PROFILE_LIB                       0
#endif
#ifndef SAC_DO_PROFILE_MEM
#define SAC_DO_PROFILE_MEM                       0
#endif
#ifndef SAC_DO_PROFILE_OPS
#define SAC_DO_PROFILE_OPS                       0
#endif
#ifndef SAC_DO_PROFILE_CUDA
#define SAC_DO_PROFILE_CUDA                      0
#endif
#ifndef SAC_DO_PROFILE_DISTMEM
#define SAC_DO_PROFILE_DISTMEM                   0
#endif

#ifndef SAC_DO_TRACE
#define SAC_DO_TRACE                             1
#endif
#ifndef SAC_DO_TRACE_REF
#define SAC_DO_TRACE_REF                         0
#endif
#ifndef SAC_DO_TRACE_MEM
#define SAC_DO_TRACE_MEM                         0
#endif
#ifndef SAC_DO_TRACE_PRF
#define SAC_DO_TRACE_PRF                         0
#endif
#ifndef SAC_DO_TRACE_FUN
#define SAC_DO_TRACE_FUN                         0
#endif
#ifndef SAC_DO_TRACE_WL
#define SAC_DO_TRACE_WL                          0
#endif
#ifndef SAC_DO_TRACE_AA
#define SAC_DO_TRACE_AA                          0
#endif
#ifndef SAC_DO_TRACE_MT
#define SAC_DO_TRACE_MT                          0
#endif
#ifndef SAC_DO_TRACE_GPU
#define SAC_DO_TRACE_GPU                         1
#endif
#ifndef SAC_DO_TRACE_RTSPEC
#define SAC_DO_TRACE_RTSPEC                      0
#endif
#ifndef SAC_DO_TRACE_DISTMEM
#define SAC_DO_TRACE_DISTMEM                     0
#endif

#ifndef SAC_DO_CACHESIM
#define SAC_DO_CACHESIM                          0
#endif
#ifndef SAC_DO_CACHESIM_ADV
#define SAC_DO_CACHESIM_ADV                      0
#endif
#ifndef SAC_DO_CACHESIM_GLOBAL
#define SAC_DO_CACHESIM_GLOBAL                   1
#endif
#ifndef SAC_DO_CACHESIM_FILE
#define SAC_DO_CACHESIM_FILE                     0
#endif
#ifndef SAC_DO_CACHESIM_PIPE
#define SAC_DO_CACHESIM_PIPE                     0
#endif
#ifndef SAC_DO_CACHESIM_IMDT
#define SAC_DO_CACHESIM_IMDT                     1
#endif

/*
 * Setup for Multi Threaded Data Parallelism
 */
#define SAC_DO_MULTITHREAD                       0
#define SAC_DO_THREADS_STATIC                    1
#define SAC_DO_MT_CREATE_JOIN                    0
#define SAC_DO_MT_PTHREAD                        0
#define SAC_DO_MT_LPEL                           0

/*
 * Setup for OMP Data Parallelism
 */
#define SAC_DO_MT_OMP                            0
#define SAC_DO_OMP_MACROS                        0

/*
 * Setup for MUTC
 */
#define SAC_MUTC_FUNAP_AS_CREATE                 0
#define SAC_MUTC_THREAD_MALLOC                   0
#define SAC_MUTC_DISABLE_THREAD_MEM              0
#define SAC_MUTC_BENCH                           0
#define SAC_MUTC_MACROS                          0
#define SAC_MUTC_RC_INDIRECT                     0
#define SAC_MUTC_SEQ_DATA_PARALLEL               0

/*
 * Setup for GPU Data Parallelism
 */
#define SAC_CUDA_MACROS                          1

/*
 * Setup for Distributed Memory Data Parallelism
 */
#define SAC_DO_DISTMEM                           0
#define SAC_DO_DISTMEM_GASNET                    0
#define SAC_DO_DISTMEM_GPI                       0
#define SAC_DO_DISTMEM_MPI                       0
#define SAC_DO_DISTMEM_ARMCI                     0
#define SAC_DO_DISTMEM_ALLOC_CACHE_OUTSIDE_DSM   0
#define SAC_DO_DISTMEM_PTR_DESC                  0
#define SAC_DO_DISTMEM_PTR_CACHE                 1

/*
 * Setup for Task Parallelism
 */
#define SAC_DO_FP                                0

/*
 * Debugging Support
 */
#ifndef SAC_DEBUG_RC
#define SAC_DEBUG_RC                             0
#endif

#define SAC_DO_CUDA_FORCE_INIT 1


/*
 *  Global Settings
 */

#define SAC_FORCE_DESC_SIZE -1

/*
 *  MUTC Backend Specific Settings
 */
#define SAC_MUTC_RC_PLACES  1
#define SAC_MUTC_FORCE_SPAWN_FLAGS

#define SAC_C_EXTERN           extern "C"



/*
 *  Global Settings
 */

#ifndef NULL
#  ifdef __cplusplus
#    define NULL         0
#  else
#    define NULL         (void*) 0
#  endif
#endif

#define SAC_SET_TMPDIR              "/tmp"
#define SAC_SET_INITIAL_MASTER_HEAPSIZE      1048576
#define SAC_SET_INITIAL_WORKER_HEAPSIZE      65536
#define SAC_SET_INITIAL_UNIFIED_HEAPSIZE     0

#ifndef SAC_SET_RTSPEC_THREADS
#define SAC_SET_RTSPEC_THREADS              1
#endif

#ifndef SAC_SET_MTMODE
#define SAC_SET_MTMODE               0
#endif

#define SAC_SET_CPU_BIND_STRATEGY 0
#define SAC_SET_BARRIER_TYPE               0
#define SAC_SET_SMART_DECISIONS            0
#define SAC_SET_SMART_FILENAME           "default"
#define SAC_SET_SMART_ARCH               "(null)"
#define SAC_SET_SMART_PERIOD               500
#ifndef SAC_SET_THREADS_MAX
#define SAC_SET_THREADS_MAX          128
#endif

#ifndef SAC_SET_THREADS
#define SAC_SET_THREADS              1
#endif

#ifndef SAC_OMP_ACTIVE_LEVEL
#define SAC_OMP_ACTIVE_LEVEL          1
#endif

#ifndef SAC_SET_MASTERCLASS
#define SAC_SET_MASTERCLASS          0
#endif

#define SAC_SET_NUM_SCHEDULERS       0

#define SAC_SET_CACHE_1_SIZE         -1
#define SAC_SET_CACHE_1_LINE         4
#define SAC_SET_CACHE_1_ASSOC        1
#define SAC_SET_CACHE_1_WRITEPOL     SAC_CS_default
#define SAC_SET_CACHE_1_MSCA_FACTOR  0.00

#define SAC_SET_CACHE_2_SIZE         -1
#define SAC_SET_CACHE_2_LINE         4
#define SAC_SET_CACHE_2_ASSOC        1
#define SAC_SET_CACHE_2_WRITEPOL     SAC_CS_default
#define SAC_SET_CACHE_2_MSCA_FACTOR  0.00

#define SAC_SET_CACHE_3_SIZE         -1
#define SAC_SET_CACHE_3_LINE         4
#define SAC_SET_CACHE_3_ASSOC        1
#define SAC_SET_CACHE_3_WRITEPOL     SAC_CS_default
#define SAC_SET_CACHE_3_MSCA_FACTOR  0.00

#define SAC_SET_CACHESIM_HOST        ""
#define SAC_SET_CACHESIM_FILE        "a.out.cs"
#define SAC_SET_CACHESIM_DIR         "/tmp"
#define SAC_SET_MAXFUN               0
#define SAC_SET_MAXFUNAP             1
#define SBLOCKSZ               16
#define LBLOCKSZ               256



/*
 *  Includes
 */


#include "sac.h"


#if SAC_OMP_MACROS

#include "omp.h"

#endif

#if SAC_CUDA_MACROS

#include <stdio.h>


#include <cuda.h>


#include <cuda_runtime.h>


#include <algorithm>

#endif

/*
 *  SAC-Program example.sac :
 */


/*
 *  Global Definitions
 */

SAC_PF_DEFINE()
SAC_HM_DEFINE()


/*
 *  prototypes for locals (FUNDEFS)
 */

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACwf__MAIN__main, , 1, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACwf__MAIN__main, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf__MAIN__generate, , 1, out, int, (SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf__MAIN__generate, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * ND_FUN_DECL( SACf__MAIN__main, , 1, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DECL_FUN2( SACf__MAIN__main, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));

SAC_C_EXTERN 
/*
 * CUDA_GLOBALFUN_DECL( SACf__MAIN___cuknl_83_CUDA__id_10000__i, 3, out, int, (SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), 1, in, int, (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), 1, in, int, (SACp_emal_80__flat_4, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0)
 */
__global__ void SACf__MAIN___cuknl_83_CUDA__id_10000__i(SAC_CUDA_PARAM_out( (SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), int), int SAC_ND_A_MIRROR_SHAPE((SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), 0), int SAC_ND_A_MIRROR_SIZE((SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, ))))))))))), int SAC_ND_A_MIRROR_DIM((SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, ))))))))))), SAC_CUDA_PARAM_in( (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), int), int SAC_ND_A_MIRROR_SHAPE((SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), 0), int SAC_ND_A_MIRROR_SIZE((SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, ))))))))))), int SAC_ND_A_MIRROR_DIM((SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, ))))))))))), SAC_CUDA_PARAM_in( (SACp_emal_80__flat_4, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int));
;



/*
 *  function definitions (FUNDEFS)
 */



/****************************************************************************
 * Wrapper function:
 * WITH-loop Count: 0
 * _MAIN::SACwf__MAIN__main(...) [ wrapper ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACwf__MAIN__main, , 1, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACwf__MAIN__main, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    /*
     * ND_DECL( (SACp_cwc_17, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_cwc_17, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_cwc_17, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()


    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf__MAIN__main, , 1, out, int, SAC_SET_NT_USG( FAG, (SACp_cwc_17, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf__MAIN__main,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACp_cwc_17, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int))

    /*
     * ND_REFRESH__MIRROR( (SACp_cwc_17, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_NOOP()

    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), (SACp_cwc_17, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), (SACp_cwc_17, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACwf__MAIN__main, , 1, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * WITH-loop Count: 0
 * _MAIN::SACf__MAIN__generate(...) [ body ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACf__MAIN__generate, , 1, out, int, (SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACf__MAIN__generate, void,  SAC_ND_PARAM_out( (SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    SAC_ND_DECL_CONST__DATA((SACp_emal_80__flat_4, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 42)
    /*
     * ND_DECL( (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1, 10000)
     */
    SAC_ND_DECL__DATA( (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = 10000;
    const int SAC_ND_A_MIRROR_SIZE( (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 10000;
    const int SAC_ND_A_MIRROR_DIM( (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;

    /*
     * ND_DECL( (SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()


    SAC_INIT_LOCAL_MEM()
    SAC_ND_ALLOC_BEGIN((SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 1, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 10000)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 1), 6, "Assignment with incompatible types found!");
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_SHAPE( (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) == 10000), 6, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 1, int)
    SAC_ND_ALLOC_BEGIN((SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 6, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    SAC_ND_ALLOC_BEGIN((SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    /*
     * ND_SET__SHAPE_arr( (SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
     */
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 6, "Assignment with incompatible types found!");
    SAC_NOOP()

    SAC_ND_ALLOC_END((SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
        
{

    SAC_GKCO_OPD_DECLARE(SAC_gkco_prt_84_tmp)
    SAC_GKCO_OPD_DECLARE(SAC_gkco_prt_85_tmp)

SAC_TR_GPU_PRINT("Mapping Gen");
    SAC_GKCO_OPD_DECLARE(SAC_gkco_prt_86_ub)
    SAC_GKCO_OPD_REDEFINE(10000, SAC_gkco_prt_86_ub)

SAC_TR_GPU_PRINT("    Index space (LUSW) = ( [%i, ], [%i, ], [%i, ], [%i, ], )%s", 
0, SAC_gkco_prt_86_ub, 1, 1, "");

SAC_TR_GPU_PRINT("Mapping ShiftLB");
SAC_TR_GPU_PRINT("    Index space (LUSW) = ( [%i, ], [%i, ], [%i, ], [%i, ], )%s", 
0, SAC_gkco_prt_86_ub, 1, 1, "");

SAC_TR_GPU_PRINT("Mapping CompressGrid([1, ])");
SAC_TR_GPU_PRINT("    Index space (LUSW) = ( [%i, ], [%i, ], [%i, ], [%i, ], )%s", 
0, SAC_gkco_prt_86_ub, 1, 1, "");

SAC_TR_GPU_PRINT("Mapping SplitLast(len 32)");
    SAC_GKCO_OPD_DECLARE(SAC_gkco_prt_87_ub)
    SAC_GKCO_HOST_OPD_PAD(SAC_gkco_prt_86_ub, SAC_gkco_prt_86_ub, 32)

    SAC_GKCO_HOST_OPM_SPLIT_LAST(SAC_gkco_prt_86_ub, SAC_gkco_prt_86_ub, SAC_gkco_prt_87_ub, 32)

SAC_TR_GPU_PRINT("    Index space (LUSW) = ( [%i, %i, ], [%i, %i, ], [%i, %i, ], [%i, %i, ], )%s", 
0, 0, SAC_gkco_prt_86_ub, SAC_gkco_prt_87_ub, 1, 1, 1, 1, "");

SAC_TR_GPU_PRINT("Mapping GridBlock (1)");
SAC_TR_GPU_PRINT("    Index space (LUSW) = ( [%i, %i, ], [%i, %i, ], [%i, %i, ], [%i, %i, ], )%s", 
0, 0, SAC_gkco_prt_86_ub, SAC_gkco_prt_87_ub, 1, 1, 1, 1, "");
    SAC_GKCO_HOST_OPM_SET_GRID(2147483647   , 65535   , 65535   , 0, SAC_gkco_prt_86_ub)

    SAC_GKCO_HOST_OPM_SET_BLOCK(1024   , 1024   , 64   , 1024, SAC_gkco_prt_87_ub)

SAC_TR_GPU_PRINT("    Index space (LUSW) = ( [%i, %i, ], [%i, %i, ], [%i, %i, ], [%i, %i, ], )%s", 
0, 0, SAC_gkco_prt_86_ub, SAC_gkco_prt_87_ub, 1, 1, 1, 1, "");


    /*
     * CUDA_GLOBALFUN_AP( SACf__MAIN___cuknl_83_CUDA__id_10000__i, 3, out, int, 1, SAC_SET_NT_USG( FAG, (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), in, int, 1, SAC_SET_NT_USG( FAG, (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), in, int, 0, SAC_SET_NT_USG( FAG, (SACp_emal_80__flat_4, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))))
     */
if (block.x * block.y * block.z * grid.x * grid.y * grid.z > 0) {
        SAC_TR_GPU_PRINT ("   kernel name \"SACf__MAIN___cuknl_83_CUDA__id_10000__i\"\n");
SAC_PF_BEGIN_CUDA_KNL ();
SACf__MAIN___cuknl_83_CUDA__id_10000__i<<<grid, block>>>(    SAC_CUDA_ARG_out( SAC_SET_NT_USG( FAG, (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int), SAC_ND_A_MIRROR_SHAPE(SAC_SET_NT_USG( FAG, (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), 0), SAC_ND_A_MIRROR_SIZE(SAC_SET_NT_USG( FAG, (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))), SAC_ND_A_MIRROR_DIM(SAC_SET_NT_USG( FAG, (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))),     SAC_CUDA_ARG_in( SAC_SET_NT_USG( FAG, (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int), SAC_ND_A_MIRROR_SHAPE(SAC_SET_NT_USG( FAG, (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), 0), SAC_ND_A_MIRROR_SIZE(SAC_SET_NT_USG( FAG, (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))), SAC_ND_A_MIRROR_DIM(SAC_SET_NT_USG( FAG, (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))),     SAC_CUDA_ARG_in( SAC_SET_NT_USG( FAG, (SACp_emal_80__flat_4, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int));
cudaDeviceSynchronize ();
SAC_PF_END_CUDA_KNL ();
SAC_CUDA_GET_LAST_KERNEL_ERROR();
} else {
SAC_TR_GPU_PRINT("Skipping kernel because it has no elements");
SAC_PRAGMA_BITMASK_CHECK_NL
}


    }

    /*
     * ND_REFRESH__MIRROR( (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1)
     */
    SAC_NOOP()

    SAC_ND_FREE((SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_80__flat_4, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACf__MAIN__generate, , 1, out, int, (SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * WITH-loop Count: 0
 * _MAIN::SACf__MAIN__main(...) [ body ]
 ****************************************************************************/
/*
 * ND_FUN_DEF_BEGIN( SACf__MAIN__main, , 1, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
 */
SAC_ND_DEF_FUN_BEGIN2( SACf__MAIN__main, void,  SAC_ND_PARAM_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int))
{
  SAC_HM_DEFINE_THREAD_STATUS( SAC_HM_single_threaded)
  SAC_MT_DEFINE_ST_SELF()

  { 
    SAC_ND_DECL_CONST__DATA((SACp_emal_82__flat_14, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 42)
    /*
     * ND_DECL( (SACp_emal_81__flat_12, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
     */
    SAC_ND_DECL__DATA( (SACp_emal_81__flat_12, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACp_emal_81__flat_12, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOTHING()

    /*
     * ND_DECL( (SACl_a, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 1, 10000)
     */
    SAC_ND_DECL__DATA( (SACl_a, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
    SAC_ND_DECL__DESC( (SACl_a, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    const int SAC_ND_A_MIRROR_SHAPE( (SACl_a, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = 10000;
    const int SAC_ND_A_MIRROR_SIZE( (SACl_a, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 10000;
    const int SAC_ND_A_MIRROR_DIM( (SACl_a, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) = 1;


    SAC_INIT_LOCAL_MEM()
    /*
     * ND_FUN_AP( SACf__MAIN__generate, , 1, out, int, SAC_SET_NT_USG( FAG, (SACl_a, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))))
     */
    SAC_ND_FUNAP2( SACf__MAIN__generate,  SAC_ND_ARG_out( SAC_SET_NT_USG( FAG, (SACl_a, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))), int))

    /*
     * ND_REFRESH__MIRROR( (SACl_a, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1)
     */
    SAC_NOOP()

    /*
     * ND_PRF_IDX_SEL__DATA( (SACp_emal_81__flat_12, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACl_a, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_emal_82__flat_14, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
     */
    SAC_TR_PRF_PRINT( ("ND_PRF_IDX_SEL__DATA( (SACp_emal_81__flat_12, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACl_a, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_emal_82__flat_14, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))"))
    SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_emal_82__flat_14, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 12, "1st argument of _idx_sel_ is not a scalar!");
    SAC_ND_WRITE_READ_COPY( (SACp_emal_81__flat_12, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACl_a, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), SAC_ND_READ( (SACp_emal_82__flat_14, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), )

    SAC_ND_FREE((SACl_a, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_ND_FREE((SACp_emal_82__flat_14, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    /*
     * ND_FUN_RET( , 1, out, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), (SACp_emal_81__flat_12, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
     */
    SAC_ND_RET_out( (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), (SACp_emal_81__flat_12, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
    return;
    SAC_CLEANUP_LOCAL_MEM()
  }
/*
   * ND_FUN_DEF_END( SACf__MAIN__main, , 1, out, int, (SAC_arg_1, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))))
   */
}
SAC_ND_FUN_DEF_END2()



/****************************************************************************
 * WITH-loop Count: 0
 * _MAIN::SACf__MAIN___cuknl_83_CUDA__id_10000__i(...) [ body ]
 ****************************************************************************/
/*
 * CUDA_GLOBALFUN_DEF_BEGIN( SACf__MAIN___cuknl_83_CUDA__id_10000__i, 3, out, int, (SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), 1, in, int, (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), 1, in, int, (SACp_emal_80__flat_4, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0)
 */
__global__ void SACf__MAIN___cuknl_83_CUDA__id_10000__i(SAC_CUDA_PARAM_out( (SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), int), int SAC_ND_A_MIRROR_SHAPE((SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), 0), int SAC_ND_A_MIRROR_SIZE((SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, ))))))))))), int SAC_ND_A_MIRROR_DIM((SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, ))))))))))), SAC_CUDA_PARAM_in( (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), int), int SAC_ND_A_MIRROR_SHAPE((SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), 0), int SAC_ND_A_MIRROR_SIZE((SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, ))))))))))), int SAC_ND_A_MIRROR_DIM((SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, ))))))))))), SAC_CUDA_PARAM_in( (SACp_emal_80__flat_4, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), int)){

{ 
  /*
   * ND_DECL( (SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
   */
  SAC_ND_DECL__DATA( (SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
  SAC_ND_DECL__DESC( (SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_NOTHING()

  /*
   * ND_DECL( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, 0)
   */
  SAC_ND_DECL__DATA( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
  SAC_ND_DECL__DESC( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_NOTHING()

  /*
   * CUDA_DECL_KERNEL_ARRAY( (SACp_hzgwl_0, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), int, 1, 1)
   */
  int SAC_ND_A_FIELD( (SACp_hzgwl_0, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))))[1];
  SAC_ND_DECL__DESC( (SACp_hzgwl_0, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), )
  const int SAC_ND_A_MIRROR_SHAPE( (SACp_hzgwl_0, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 0) = 1;
  const int SAC_ND_A_MIRROR_SIZE( (SACp_hzgwl_0, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))) = 1;
  const int SAC_ND_A_MIRROR_DIM( (SACp_hzgwl_0, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, ))))))))))) = 1;


  SAC_INIT_LOCAL_MEM()
  SAC_ND_ALLOC_BEGIN((SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
  /*
   * ND_SET__SHAPE_arr( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0)
   */
  SAC_ASSURE_TYPE_LINE ((SAC_ND_A_DIM( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, ))))))))))) == 0), 6, "Assignment with incompatible types found!");
  SAC_NOOP()

  SAC_ND_ALLOC_END((SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 0, int)
    SAC_GKCO_OPD_DECLARE(SAC_gkco_prt_88_tmp)
  SAC_GKCO_OPD_DECLARE(SAC_gkco_prt_89_tmp)
  SAC_GKCO_OPD_DECLARE(SAC_gkco_prt_90_ret_col)

  SAC_GKCO_OPM_RETURN_COL_INIT(SAC_gkco_prt_90_ret_col)




  SAC_GKCO_OPD_DECLARE(SAC_gkco_prt_91_ub)
  SAC_GKCO_OPD_DECLARE(SAC_gkco_prt_92_idx)
  SAC_GKCO_OPD_DECLARE(SAC_gkco_prt_93_ub)
  SAC_GKCO_HOST_OPD_PAD(10000, SAC_gkco_prt_93_ub, 32)

  SAC_GKCO_OPD_DECLARE(SAC_gkco_prt_94_ub)
  SAC_GKCO_HOST_OPM_SPLIT_LAST(SAC_gkco_prt_93_ub, SAC_gkco_prt_94_ub, SAC_gkco_prt_91_ub, 32)



  SAC_GKCO_OPD_REDEFINE(THREADIDX_X, SAC_gkco_prt_92_idx)

  SAC_GKCO_OPD_REDEFINE(BLOCKIDX_X, SAC_ND_READ( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))


  SAC_GKCO_GPUD_OPM_UNSPLIT_LAST(SAC_ND_READ( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), SAC_gkco_prt_92_idx, 32)

  SAC_GKCO_GPUD_OPD_UNPAD_BL(10000, SAC_ND_READ( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), SAC_gkco_prt_90_ret_col)




  SAC_GKCO_GPUD_OPM_RETURN_IF_COLLECTED(SAC_gkco_prt_90_ret_col)

  SAC_GKCO_GPUD_OPD_DEF_IV((SACp_hzgwl_0, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 0, SAC_ND_READ( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0))



  /*
   * ND_IDXS2OFFSET_arr( (SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 1, 10000)
   */
  SAC_ND_WRITE( (SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0) = SAC_ND_READ( (SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0);

  /*
   * CUDA_WL_ASSIGN( (SACp_emal_80__flat_4, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), 1, (SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))))
   */
  SAC_ND_WRITE_READ_COPY( (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (OTH, )))))))))), SAC_ND_READ( (SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0), (SACp_emal_80__flat_4, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0, );

  SAC_ND_FREE((SACp_wlidx_70__flat_1, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_ND_FREE((SACp_eat_15, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
    SAC_NOOP()

  SAC_CLEANUP_LOCAL_MEM()
}
/*
 * CUDA_GLOBALFUN_DEF_END( SACf__MAIN___cuknl_83_CUDA__id_10000__i, 3, out, int, (SAC_arg_1, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), 1, in, int, (SACp_emal_78__iwlmem_77_dev, (AKS, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (OTH, )))))))))), 1, in, int, (SACp_emal_80__flat_4, (SCL, (NHD, (NUQ, (INT, (GLO, (FPM, (NOT, (NDI, (INT, )))))))))), 0)
 */
}

/*
 * stubs for SACARGfreeDataUdt and SACARGcopyDataUdt
 */
extern "C" void SACARGfreeDataUdt( int, void *);
extern "C" void *SACARGcopyDataUdt( int, int, void *);
void SACARGfreeDataUdt( int size, void *data) {}
void *SACARGcopyDataUdt( int type, int size, void *data) { return ((void *) 0x0); } 

int main( int __argc, char *__argv[])
{
  SAC_ND_DECL__DATA( (SAC_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int, )
  SAC_ND_DECL__DESC( (SAC_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), )
  SAC_NOTHING()
  SAC_HWLOC_SETUP();
  SAC_MT_SETUP_INITIAL();
  SAC_PF_SETUP();
  SAC_HM_SETUP();
  SAC_MT_SETUP();
  SAC_CUDA_SETUP();
  SAC_CS_SETUP();
  SAC_COMMANDLINE_SET( __argc, __argv);

  SAC_INVOKE_MAIN_FUN( SACf__MAIN__main, SAC_ND_ARG_out( (SAC_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), int));

  SAC_DISTMEM_BARRIER();
  SAC_PF_PRINT();
  SAC_CS_FINALIZE();
  SAC_MT_FINALIZE();
  SAC_CUDA_FINALIZE();
  SAC_HWLOC_FINALIZE();
  SAC_HM_PRINT();

  return( SAC_ND_READ( (SAC_res, (SCL, (NHD, (NUQ, (INT, (GLO, (NON, (NOT, (NDI, (INT, )))))))))), 0));
}
