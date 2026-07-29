import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure ImmersionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  immersionMap : Type v
  metric : Type w
  secondFundamentalForm : Type x
  meanCurvatureVector : Type y
  minimalCondition : Prop
  curvatureCondition : Prop

structure ImmersionEvidence (I : ImmersionPackage) where
  smoothStructureClosed : I.smoothStructure
  minimalConditionClosed : I.minimalCondition
  curvatureConditionClosed : I.curvatureCondition

def ImmersionClosed (I : ImmersionPackage) : Prop :=
  I.smoothStructure ∧ I.minimalCondition ∧ I.curvatureCondition

theorem immersion_closed_from_evidence (I : ImmersionPackage) (E : ImmersionEvidence I) :
    ImmersionClosed I := by
  exact And.intro E.smoothStructureClosed (And.intro E.minimalConditionClosed E.curvatureConditionClosed)

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse