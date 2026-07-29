import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean.ImmersionPackage

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure MinimalSurfacePackage (I : ImmersionPackage) where
  inducedMetric : Type w
  meanCurvature : Type x
  meanCurvatureZero : Prop
  areaFunctionalCritical : Prop
  meanCurvatureZeroTerm : meanCurvatureZero

structure MinimalSurfaceEvidence {I : ImmersionPackage} (M : MinimalSurfacePackage I) where
  meanCurvatureZeroClosed : M.meanCurvatureZero
  areaFunctionalCriticalClosed : M.areaFunctionalCritical

def MinimalSurfaceClosed {I : ImmersionPackage} (M : MinimalSurfacePackage I) : Prop :=
  M.meanCurvatureZero ∧ M.areaFunctionalCritical

theorem minimal_surface_closed_from_evidence {I : ImmersionPackage} (M : MinimalSurfacePackage I) (E : MinimalSurfaceEvidence M) : MinimalSurfaceClosed M := by
  exact And.intro E.meanCurvatureZeroClosed E.areaFunctionalCriticalClosed

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse