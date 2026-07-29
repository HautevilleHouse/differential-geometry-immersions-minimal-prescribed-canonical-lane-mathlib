import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure ImmersionStructurePackage where
  sourceManifold : Type u
  targetManifold : Type v
  immersionMap : Type w
  rankCondition : Prop
  regularImmersion : Prop
  pullbackBundle : Type x
  pullbackMetric : Prop

structure ImmersionStructureEvidence (P : ImmersionStructurePackage) where
  rankConditionClosed : P.rankCondition
  regularImmersionClosed : P.regularImmersion
  pullbackMetricClosed : P.pullbackMetric

def ImmersionStructureClosed (P : ImmersionStructurePackage) : Prop :=
  P.rankCondition ∧ P.regularImmersion ∧ P.pullbackMetric

theorem immersion_structure_closed_from_evidence
    (P : ImmersionStructurePackage) (E : ImmersionStructureEvidence P) :
    ImmersionStructureClosed P := by
  exact And.intro E.rankConditionClosed
    (And.intro E.regularImmersionClosed E.pullbackMetricClosed)

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse
