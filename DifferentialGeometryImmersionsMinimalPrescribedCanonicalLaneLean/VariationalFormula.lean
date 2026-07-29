import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean.MinimalSubmanifold

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure VariationalFormula (I : ImmersedSubmanifold) (M : MinimalSubmanifold I) where
  firstVariation : Prop
  secondVariation : Prop
  stabilityCondition : Prop
  firstVariationHolds : firstVariation
  secondVariationHolds : secondVariation
  stabilityConditionHolds : stabilityCondition

structure VariationalEvidence {I : ImmersedSubmanifold} {M : MinimalSubmanifold I} (V : VariationalFormula I M) where
  firstVariationClosed : V.firstVariation
  secondVariationClosed : V.secondVariation
  stabilityConditionClosed : V.stabilityCondition

def VariationalClosed {I : ImmersedSubmanifold} {M : MinimalSubmanifold I} (V : VariationalFormula I M) : Prop :=
  V.firstVariation ∧ V.secondVariation ∧ V.stabilityCondition

theorem variational_closed_from_evidence {I : ImmersedSubmanifold} {M : MinimalSubmanifold I} (V : VariationalFormula I M) (E : VariationalEvidence V) : VariationalClosed V := by
  exact And.intro E.firstVariationClosed (And.intro E.secondVariationClosed E.stabilityConditionClosed)

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse