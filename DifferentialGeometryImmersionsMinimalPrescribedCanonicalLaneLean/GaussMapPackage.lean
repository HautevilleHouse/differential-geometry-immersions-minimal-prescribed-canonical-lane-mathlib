import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean.ImmersionPackage

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure GaussMapPackage (I : ImmersionPackage) where
  normalBundle : Type z
  gaussMap : I.sourceManifold → I.targetManifold
  gaussMapDefined : Prop
  gaussMapConformal : Prop
  gaussMapDefinedTerm : gaussMapDefined
  gaussMapConformalTerm : gaussMapConformal

structure GaussMapEvidence {I : ImmersionPackage} (G : GaussMapPackage I) where
  gaussMapDefinedClosed : G.gaussMapDefined
  gaussMapConformalClosed : G.gaussMapConformal

def GaussMapClosed {I : ImmersionPackage} (G : GaussMapPackage I) : Prop :=
  G.gaussMapDefined ∧ G.gaussMapConformal

theorem gauss_map_closed_from_evidence {I : ImmersionPackage} (G : GaussMapPackage I) (E : GaussMapEvidence G) : GaussMapClosed G := by
  exact And.intro E.gaussMapDefinedClosed E.gaussMapConformalClosed

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse