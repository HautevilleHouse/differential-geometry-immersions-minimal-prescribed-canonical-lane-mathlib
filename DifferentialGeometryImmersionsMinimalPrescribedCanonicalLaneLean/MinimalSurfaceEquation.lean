import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure MinimalSurfaceEquationPackage where
  ambientManifold : Type u
  ambientMetric : Type v
  surfaceImmersion : Type w
  meanCurvatureZero : Prop
  eulerLagrangeEquation : Prop

structure MinimalSurfaceEquationEvidence (P : MinimalSurfaceEquationPackage) where
  meanCurvatureZeroClosed : P.meanCurvatureZero
  eulerLagrangeEquationClosed : P.eulerLagrangeEquation

def MinimalSurfaceEquationClosed (P : MinimalSurfaceEquationPackage) : Prop :=
  P.meanCurvatureZero ∧ P.eulerLagrangeEquation

theorem minimal_surface_equation_closed_from_evidence
    (P : MinimalSurfaceEquationPackage) (E : MinimalSurfaceEquationEvidence P) :
    MinimalSurfaceEquationClosed P := by
  exact And.intro E.meanCurvatureZeroClosed E.eulerLagrangeEquationClosed

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse
