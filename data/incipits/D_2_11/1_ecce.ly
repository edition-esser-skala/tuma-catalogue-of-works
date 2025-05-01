\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key f \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*3
    r2 r4 c'
    c1
    c4 c b b8 b
  }
}

SopranoLyrics = \lyricmode {
  Qui
  sta --
  tis in a -- tri -- is
}

Alto = {
  \relative c' {
    \clef alto
    \key f \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*2
    r4 r8 g'^\tutti g2~
    g g
    r4 r8 a g[ f] e[ d]
    c16 b! a8 a'4 a g8 g
  }
}

AltoLyrics = \lyricmode {
  Qui sta --
  tis
  in do -- mo
  Do -- mi -- ni, in a -- tri -- is
}

Tenore = {
  \relative c' {
    \clef tenor
    \key f \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r4 a8 f c'4 b8 c
    a g16 f e8. e16 f4 g8 g
    a16[ h] c8 c \hA h c4 r8 e
    d[ c] h[ a] g16 f e8 r4
    r r8 f' e[ d] c[ b]
    a16 g f8 f'4 d d8 e
  }
}

TenoreLyrics = \lyricmode {
  Ec -- ce nunc be -- ne --
  di -- ci -- te Do -- mi -- num o -- mnes
  ser -- vi Do -- mi -- ni: in
  do -- mo Do -- mi -- ni,
  in do -- mo
  Do -- mi -- ni, in a -- tri -- is
}

Basso = {
  \relative c {
    \clef bass
    \key f \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*2
    r2 r4 r8 c'
    h[ a] g[ f] e16 d c8 e4
    f8[ g] a[ f] c4 e
    f f g g8 e
  }
}

BassoLyrics = \lyricmode {
  In
  do -- mo Do -- mi -- ni, in
  do -- mo Do -- mi --
  ni, in a -- tri -- is
}

Organo = {
  \relative c {
    \clef bass
    \key f \major \time 4/4 \tempoMarkup "[no tempo]"
    f8 a16 g f4 e d8 e
    f b, c c, f f' e c
    f e d g c,4 r8 c'-\tutti
    h a g f e16 d c8 e4
    f8 g a f c4 e
    f2 g4. e8
  }
}

BassFigures = \figuremode {
  r2 <6>4 q8 q
  r1
  r4 <7>8 <_!> r2
  <6>2 q
  r1
  r2 <9>4 <8>
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "vl 1, 2" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
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
