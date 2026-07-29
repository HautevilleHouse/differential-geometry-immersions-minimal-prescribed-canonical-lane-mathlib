import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean.ImmersedSubmanifold

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure GaussCodazziEquations (I : ImmersedSubmanifold) where
  gaussEquation : Prop
  codazziEquation : Prop
  ricciEquation : Prop
  gaussEquationHolds : gaussEquation
  codazziEquationHolds : codazziEquation
  ricciEquationHolds : ricciEquation

structure GaussCodazziEvidence {I : ImmersedSubmanifold} (G : GaussCodazziEquations I) where
  gaussEquationClosed : G.gaussEquation
  codazziEquationClosed : G.codazziEquation
  ricciEquationClosed : G.ricciEquation

def GaussCodazziClosed {I : ImmersedSubmanifold} (G : GaussCodazziEquations I) : Prop :=
  G.gaussEquation ∧ G.codazziEquation ∧ G.ricciEquation

theorem gauss_codazzi_closed_from_evidence {I : ImmersedSubmanifold} (G : GaussCodazziEquations I) (E : GaussCodazziEvidence G) : GaussCodazziClosed G := by
  exact And.intro E.gaussEquationClosed (And.intro E.codazziEquationClosed E.ricciEquationClosed)

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse