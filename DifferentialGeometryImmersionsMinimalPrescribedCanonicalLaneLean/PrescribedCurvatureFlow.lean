import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean.CurvatureInvariantPackage

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure PrescribedCurvatureFlow (I : ImmersionPackage) (M : MinimalSurfacePackage I) (C : CurvatureInvariantPackage I M) where
  targetCurvatureFunction : I.sourceManifold → ℝ
  flowEquation : Prop
  flowEquationTerm : flowEquation

structure PrescribedCurvatureFlowEvidence {I : ImmersionPackage} {M : MinimalSurfacePackage I} {C : CurvatureInvariantPackage I M} (P : PrescribedCurvatureFlow I M C) where
  flowEquationClosed : P.flowEquation

def PrescribedCurvatureFlowClosed {I : ImmersionPackage} {M : MinimalSurfacePackage I} {C : CurvatureInvariantPackage I M} (P : PrescribedCurvatureFlow I M C) : Prop :=
  P.flowEquation

theorem prescribed_curvature_flow_closed_from_evidence {I : ImmersionPackage} {M : MinimalSurfacePackage I} {C : CurvatureInvariantPackage I M} (P : PrescribedCurvatureFlow I M C) (E : PrescribedCurvatureFlowEvidence P) : PrescribedCurvatureFlowClosed P := by
  exact E.flowEquationClosed

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse