import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DGSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DGAdmittedObject where
  space : DGSpace
  riemannianMetric : Prop
  secondFundamentalForm : Prop
  minimalCondition : Prop
  curvatureCondition : Prop
  conclusion : curvatureCondition

structure DGEndgameState where
  object : DGAdmittedObject

def DGCurvatureClosed (O : DGAdmittedObject) : Prop :=
  O.curvatureCondition

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse