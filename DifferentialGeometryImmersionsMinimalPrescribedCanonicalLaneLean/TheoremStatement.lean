import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure MinimalImmersionAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  riemannianMetric : Type v
  immersion : Type w
  minimal : Prop
  prescribedCurvature : Type x
  conclusion : minimal ∧ Nonempty prescribedCurvature

def MinimalImmersionWitnessClosed (O : MinimalImmersionAdmittedObject) : Prop :=
  O.minimal ∧ Nonempty O.prescribedCurvature

theorem minimal_immersion_witness_closed_from_conclusion (O : MinimalImmersionAdmittedObject) :
    MinimalImmersionWitnessClosed O := O.conclusion

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse