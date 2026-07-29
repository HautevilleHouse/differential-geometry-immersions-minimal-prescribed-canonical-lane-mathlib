import DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean.RiemannianCurvature

/-!
# Immersion Theory Package
-/

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure ImmersionPackage (G : RiemannianCurvaturePackage) where
  domainManifold : Type u
  targetManifold : Type v
  immersionMap : domainManifold → targetManifold
  immersionRank : Prop
  immersionSmooth : Prop
  firstFundamentalForm : Prop
  secondFundamentalForm : Prop

structure ImmersionEvidence {G : RiemannianCurvaturePackage} (I : ImmersionPackage G) where
  immersionRankClosed : I.immersionRank
  immersionSmoothClosed : I.immersionSmooth
  firstFundamentalFormClosed : I.firstFundamentalForm
  secondFundamentalFormClosed : I.secondFundamentalForm

def ImmersionClosed {G : RiemannianCurvaturePackage} (I : ImmersionPackage G) : Prop :=
  I.immersionRank ∧ I.immersionSmooth ∧ I.firstFundamentalForm ∧ I.secondFundamentalForm

theorem immersion_closed_from_evidence {G : RiemannianCurvaturePackage} (I : ImmersionPackage G) (E : ImmersionEvidence I) : ImmersionClosed I := by
  exact And.intro E.immersionRankClosed (And.intro E.immersionSmoothClosed (And.intro E.firstFundamentalFormClosed E.secondFundamentalFormClosed))

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse