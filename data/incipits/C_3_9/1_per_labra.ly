\version "2.24.2"
\include "header.ly"

Violino = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Larghetto"
    \partial 8 r8 r2 r8 fis'16.(\trill e32) fis8 r
    d-! r cis-! r \gotoBar "9" r2
    r r4 r8 d~
    d cis16 h cis4\trill d r
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key d \major \time 4/4 \tempoMarkup "Larghetto"
    \partial 8 a8 d16 fis e16.\trill d32 a'16 cis h16.\trill a32 d8 d, r16 a' g32([ fis) e-! d]-!
    r16 h' a32([ g) fis-! e]-! r16 e cis32([ h) a-! g]-! \gotoBar "9" r2
    r r8 a d16.[\trill cis64( d)] fis16.\trill e64( fis)
    e8 a, e'16.[\trill d64( e)] g16.\trill fis64( g) fis4 r
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key d \major \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    \partial 8 r8 R1
    r2 \gotoBar "9" r8 a'^\solo \grace g16 fis8 e16[ d]
    h'[ cis] d[ a] g8.\trill g16 fis4 r
    r2 r8 a g16[ fis] e[ d]
  }
}

AltoLyrics = \lyricmode {
  Per la -- bra
  ne -- ctar bi -- bi -- tur,
  cor -- di -- que
}

Organo = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \tempoMarkup "Larghetto"
    \partial 8 r8 d4-\solo cis h fis
    g a \gotoBar "9" d, r8 fis'
    g fis e a, d4 r8 d
    a'4 r8 a, d4 r8 d
  }
}

BassFigures = \figuremode {
  r8 r1
  r1
  r4 <7>2.
  <5 4>8 <\t 3>2..
}

\score {
  <<
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = "vl"
        \Violino
      }
      \new Staff {
        \set Staff.instrumentName = "vla"
        \Viola
      }
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
