import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure ImmersedSubmanifold where
  ambientManifold : Type u
  ambientTopology : TopologicalSpace ambientManifold
  ambientSmoothStructure : 
  submanifoldSet : Set ambientManifold
  immersionMap : submanifoldSet → ambientManifold
  immersionRankCondition : Prop
  smoothImmersion : Prop
  immersionRankConditionHolds : immersionRankCondition
  smoothImmersionHolds : smoothImmersion

structure ImmersionEvidence (I : ImmersedSubmanifold) where
  immersionRankConditionClosed : I.immersionRankCondition
  smoothImmersionClosed : I.smoothImmersion

def ImmersionClosed (I : ImmersedSubmanifold) : Prop :=
  I.immersionRankCondition ∧ I.smoothImmersion

theorem immersion_closed_from_evidence (I : ImmersedSubmanifold) (E : ImmersionEvidence I) : ImmersionClosed I := by
  exact And.intro E.immersionRankConditionClosed E.smoothImmersionClosed

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse