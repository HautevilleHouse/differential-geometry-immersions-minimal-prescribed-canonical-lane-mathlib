import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean.MinimalSurfacePackage

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure CurvatureInvariantPackage (I : ImmersionPackage) (M : MinimalSurfacePackage I) where
  gaussianCurvature : I.sourceManifold → ℝ
  secondFundamentalForm : Type w
  gaussianCurvatureFormula : Prop
  gaussBonnetCompat : Prop
  gaussianCurvatureFormulaTerm : gaussianCurvatureFormula
  gaussBonnetCompatTerm : gaussBonnetCompat

structure CurvatureInvariantEvidence {I : ImmersionPackage} {M : MinimalSurfacePackage I} (C : CurvatureInvariantPackage I M) where
  gaussianCurvatureFormulaClosed : C.gaussianCurvatureFormula
  gaussBonnetCompatClosed : C.gaussBonnetCompat

def CurvatureInvariantClosed {I : ImmersionPackage} {M : MinimalSurfacePackage I} (C : CurvatureInvariantPackage I M) : Prop :=
  C.gaussianCurvatureFormula ∧ C.gaussBonnetCompat

theorem curvature_invariant_closed_from_evidence {I : ImmersionPackage} {M : MinimalSurfacePackage I} (C : CurvatureInvariantPackage I M) (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C := by
  exact And.intro E.gaussianCurvatureFormulaClosed E.gaussBonnetCompatClosed

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse