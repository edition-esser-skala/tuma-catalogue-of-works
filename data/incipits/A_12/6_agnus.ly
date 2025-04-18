\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    a'4 f' cis d
    r a b h
    h8[ a] a4 e' f
    cis d e d
    d2~ d8[ c] b4~
    b a g2\trill
    f4
  }
}

SopranoLyrics = \lyricmode {
  A -- gnus De -- i,
  pec -- ca -- ta
  mun -- di: Mi -- se --
  re -- re, mi -- se --
  re -- _
  re no --
  bis.
}

Alto = {
  \relative c' {
    \clef alto
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 r4 a'
    g f e2
    e4 e r2
    R1
    a4 b fis g8[ f]
    e4 f2 e4
    f
  }
}

AltoLyrics = \lyricmode {
  Qui
  tol -- lis pec --
  ca -- ta:

  Mi -- se -- re -- re
  no -- _ _
  bis.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 r4 f
    e d d2
    d4 cis r2
    e4 f cis d
    d8[ c] b4 c d
    g, a8[ b] c2
    c4
  }
}

TenoreLyrics = \lyricmode {
  Qui
  tol -- lis pec --
  ca -- ta:
  Mi -- se -- re -- re,
  mi -- se -- re -- re
  no -- _ _
  bis.
}

Basso = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    d4 d e f
    r f g gis
    a a, r2
    r a'4 b
    fis g a b
    c,1
    f,4
  }
}

BassoLyrics = \lyricmode {
  A -- gnus De -- i,
  pec -- ca -- ta
  mun -- di:
  Mi -- se --
  re -- re no -- _
  _
  bis.
}

Organo = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \tempoMarkup "Adagio"
    d4 r e f
    r f g gis
    a a, a r
    a r a' b
    fis g a b
    c,1
    f,4
  }
}

BassFigures = \figuremode {
  r2 <6\\>4 <6>
  r <\t> <6 5> <\t \t>
  <4> <_+>2.
  <\t>2 q4 <3>
  <6 5>2 <6\\>4 <6>
  <7 5> <6 4> <5 \t> <\t 3>
  r1
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "vl 1" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "vl 2" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "vla" "trb 2" }
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
