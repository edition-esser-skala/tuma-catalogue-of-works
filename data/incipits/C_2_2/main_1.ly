\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef bass
  \key a \major \time 4/4
  a4.^\partOrg gis8 fis e r e
  d4 e8 e, \clef treble e'''^\partVi gis16 a h, a' gis h,
  a cis fis fis gis, fis' e g, fis a d d e, d' cis e,

}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
