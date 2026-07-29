import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure PrescribedCurvaturePackage where
  immersion : ImmersionStructurePackage
  prescribedCurvature : Type u
  curvatureEquation : Prop
  gaussCodazziEquations : Prop

structure PrescribedCurvatureEvidence (P : PrescribedCurvaturePackage) where
  curvatureEquationClosed : P.curvatureEquation
  gaussCodazziEquationsClosed : P.gaussCodazziEquations

def PrescribedCurvatureClosed (P : PrescribedCurvaturePackage) : Prop :=
  P.curvatureEquation ∧ P.gaussCodazziEquations

theorem prescribed_curvature_closed_from_evidence
    (P : PrescribedCurvaturePackage) (E : PrescribedCurvatureEvidence P) :
    PrescribedCurvatureClosed P := by
  exact And.intro E.curvatureEquationClosed E.gaussCodazziEquationsClosed

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse
