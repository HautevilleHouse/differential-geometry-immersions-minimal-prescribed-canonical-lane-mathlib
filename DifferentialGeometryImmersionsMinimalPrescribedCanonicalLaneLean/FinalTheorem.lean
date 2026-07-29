import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean.BridgeLemmas
import DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

def ConstrainedMinimalImmersionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_minimal_immersion_endgame (A : AdmissibleClass) :
    ConstrainedMinimalImmersionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse
