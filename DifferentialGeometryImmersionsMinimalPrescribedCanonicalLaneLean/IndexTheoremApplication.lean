import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean.PrescribedCurvatureFlow

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure IndexTheoremApplicationPackage {M : MinimalSurfaceEquationPackage} {P : PrescribedCurvatureFlowPackage M} where
  ellipticOperator : Type
  fredholmIndex : Prop
  indexFormula : Prop
  topologicalConstraints : Prop

structure IndexTheoremApplicationEvidence {M : MinimalSurfaceEquationPackage} {P : PrescribedCurvatureFlowPackage M} (I : IndexTheoremApplicationPackage M P) where
  ellipticOperatorClosed : I.ellipticOperator
  fredholmIndexClosed : I.fredholmIndex
  indexFormulaClosed : I.indexFormula
  topologicalConstraintsClosed : I.topologicalConstraints

def IndexTheoremApplicationClosed {M : MinimalSurfaceEquationPackage} {P : PrescribedCurvatureFlowPackage M} (I : IndexTheoremApplicationPackage M P) : Prop :=
  I.ellipticOperator ∧ I.fredholmIndex ∧ I.indexFormula ∧ I.topologicalConstraints

theorem index_theorem_application_closed_from_evidence {M : MinimalSurfaceEquationPackage} {P : PrescribedCurvatureFlowPackage M} (I : IndexTheoremApplicationPackage M P) (E : IndexTheoremApplicationEvidence I) :
    IndexTheoremApplicationClosed I := by
  exact And.intro E.ellipticOperatorClosed (And.intro E.fredholmIndexClosed (And.intro E.indexFormulaClosed E.topologicalConstraintsClosed))

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse