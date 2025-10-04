\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*3
    r2 r4 r8 h'^\solo
    c h16[ c] d8 c16[ h] c4 d8 c
    c h h e, e'[ d] c[ h]
  }
}

SopranoLyrics = \lyricmode {
  Sit
  no -- men Do -- mi -- ni be -- ne --
  di -- ctum, ex hoc nunc et
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*3
    r2 r4 r8 gis'^\solo
    a gis16[ a] h8 a16[ \hA gis] a4 h8 a
    a gis r4 r e8 e
  }
}

AltoLyrics = \lyricmode {
  Sit
  no -- men Do -- mi -- ni be -- ne --
  di -- ctum, ex hoc
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r8 a^\solo e'4~ e16[ f d e] c4~
    c16[ d h c] a4 a8 h16 c h8. a16
    gis8 h e4~ e16[ f d e] cis4
    d16[ e f e] d4 d8 c16[ d] h8. a16
    a4 r r2
    R1
  }
}

TenoreLyrics = \lyricmode {
  Lau -- da -- _
  te pu -- e -- ri Do -- mi --
  num: Lau -- da -- _
  _ te no -- men Do -- mi --
  ni.
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r4 r8 e^\solo a4~ a16[ b g a]
    f4~ f16[ g] e[ f] d8 d16 d dis8. dis16
    e4 r8 e a4~ a16[ b g a]
    f4. e16[ d] e8 a e8. e16
    a,4 r r2
    R1
  }
}

BassoLyrics = \lyricmode {
  Lau -- da --
  _ te pu -- e -- ri Do -- mi --
  num: Lau -- da --
  _ te no -- men Do -- mi --
  ni.
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    a'4-\solo gis a a8 g?
    f4 f8 e d4 dis
    e gis a a,
    d8. e16 f4 e8 a, e' e,
    a4 d8 e a, a' gis a
    e8. fis16 gis4 gis2
  }
}

BassFigures = \figuremode {
  r1
  r2. <6>8 <5>
  <_+>2. q4
  r <6> <7 _+> <_+>
  r <6>8 <_+>4. <5>4
  <6 4>8 <5 _+> <6>2.
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
