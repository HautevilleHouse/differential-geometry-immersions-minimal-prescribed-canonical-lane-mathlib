import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure ImmersionPackage where
  sourceManifold : Type u
  targetManifold : Type v
  immersionMap : sourceManifold → targetManifold
  smoothImmersion : Prop
  immersionRankFull : Prop
  immersionRankFullTerm : immersionRankFull

structure ImmersionEvidence (I : ImmersionPackage) where
  smoothImmersionClosed : I.smoothImmersion
  immersionRankFullClosed : I.immersionRankFull

def ImmersionClosed (I : ImmersionPackage) : Prop := I.smoothImmersion ∧ I.immersionRankFull

theorem immersion_closed_from_evidence (I : ImmersionPackage) (E : ImmersionEvidence I) : ImmersionClosed I := by
  exact And.intro E.smoothImmersionClosed E.immersionRankFullClosed

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse