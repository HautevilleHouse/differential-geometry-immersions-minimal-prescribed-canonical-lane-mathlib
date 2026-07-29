import DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ImmersedManifold where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedObject where
  manifold : ImmersedManifold
  smoothImmersion : Prop
  minimalityCondition : Prop
  prescribedCurvature : Prop
  conclusion : smoothImmersion ∧ minimalityCondition ∧ prescribedCurvature

structure EndgameState where
  object : AdmittedObject

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.smoothImmersion ∧ O.minimalityCondition ∧ O.prescribedCurvature

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse