import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean.MinimalSubmanifold

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure PrescribedMeanCurvatureProblem (I : ImmersedSubmanifold) (M : MinimalSubmanifold I) where
  targetMeanCurvature : M.meanCurvatureVector → Prop
  prescribedFunction : Type u
  existsSolution : Prop
  uniqueSolution : Prop
  targetMeanCurvatureDefined : targetMeanCurvature
  prescribedFunctionDefined : prescribedFunction
  existsSolutionHolds : existsSolution
  uniqueSolutionHolds : uniqueSolution

structure PrescribedMeanCurvatureEvidence {I : ImmersedSubmanifold} {M : MinimalSubmanifold I} (P : PrescribedMeanCurvatureProblem I M) where
  existsSolutionClosed : P.existsSolution
  uniqueSolutionClosed : P.uniqueSolution

def PrescribedMeanCurvatureClosed {I : ImmersedSubmanifold} {M : MinimalSubmanifold I} (P : PrescribedMeanCurvatureProblem I M) : Prop :=
  P.existsSolution ∧ P.uniqueSolution

theorem prescribed_mean_curvature_closed_from_evidence {I : ImmersedSubmanifold} {M : MinimalSubmanifold I} (P : PrescribedMeanCurvatureProblem I M) (E : PrescribedMeanCurvatureEvidence P) : PrescribedMeanCurvatureClosed P := by
  exact And.intro E.existsSolutionClosed E.uniqueSolutionClosed

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse