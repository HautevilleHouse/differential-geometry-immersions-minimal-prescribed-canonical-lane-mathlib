import DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean.ImmersionTheory

/-!
# Minimal Submanifold Package
-/

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure MinimalSubmanifoldPackage {G : RiemannianCurvaturePackage} (I : ImmersionPackage G) where
  meanCurvatureVector : Type u
  meanCurvatureZero : Prop
  minimalEquation : Prop
  stabilityOperator : Prop

structure MinimalSubmanifoldEvidence {G : RiemannianCurvaturePackage} {I : ImmersionPackage G} (M : MinimalSubmanifoldPackage I) where
  meanCurvatureZeroClosed : M.meanCurvatureZero
  minimalEquationClosed : M.minimalEquation
  stabilityOperatorClosed : M.stabilityOperator

def MinimalSubmanifoldClosed {G : RiemannianCurvaturePackage} {I : ImmersionPackage G} (M : MinimalSubmanifoldPackage I) : Prop :=
  M.meanCurvatureZero ∧ M.minimalEquation ∧ M.stabilityOperator

theorem minimal_submanifold_closed_from_evidence {G : RiemannianCurvaturePackage} {I : ImmersionPackage G} (M : MinimalSubmanifoldPackage I) (E : MinimalSubmanifoldEvidence M) : MinimalSubmanifoldClosed M := by
  exact And.intro E.meanCurvatureZeroClosed (And.intro E.minimalEquationClosed E.stabilityOperatorClosed)

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse