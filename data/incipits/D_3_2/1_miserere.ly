\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Adagio" \autoBeamOff
    d'2 es
    es d4 r\fermata
    h2. h4
    c2 c
    r c
    as g
    fis fis
    r g
    g g
    g g4 g
    g2 fis
    g1\fermata
  }
}

SopranoLyrics = \lyricmode {
  Mi -- se --
  re -- re
  me -- i
  De -- us
  se --
  cun -- dum
  ma -- gnam
  mi --
  se -- ri --
  cor -- di -- am
  tu -- _
  am
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Adagio" \autoBeamOff
    g'2 g
    a a4 r\fermata
    as2. as4
    g2 g
    r g
    es es
    d d
    r d
    es es
    e e4 e
    d1
    d\fermata
  }
}

AltoLyrics = \lyricmode {
  Mi -- se --
  re -- re
  me -- i
  De -- us
  se --
  cun -- dum
  ma -- gnam
  mi --
  se -- ri --
  cor -- di -- am
  tu --
  am
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Adagio" \autoBeamOff
    b2 b
    c a4 r\fermata
    d2. d4
    es2 c
    r es
    c2. b4
    a2 a
    r b
    b b
    a a4 a
    a1
    g\fermata
  }
}

TenoreLyrics = \lyricmode {
  Mi -- se --
  re -- re
  me -- i
  De -- us
  se --
  cun -- dum
  ma -- gnam
  mi --
  se -- ri --
  cor -- di -- am
  tu --
  am
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Adagio" \autoBeamOff
    g'2 g
    fis fis4 r\fermata
    f2. f4
    es2 es
    r c
    c c
    c c
    r b
    es d
    cis cis4 cis
    d1
    g,\fermata
  }
}

BassoLyrics = \lyricmode {
  Mi -- se --
  re -- re
  me -- i
  De -- us
  se --
  cun -- dum
  ma -- gnam
  mi --
  se -- ri --
  cor -- di -- am
  tu --
  am
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Adagio"
    g'1
    fis2 fis4 r\fermata
    f1
    es
    r2 c
    c1
    c
    r2 b
    es d
    cis1
    d
    g,\fermata
  }
}

BassFigures = \figuremode {
  <5>2 <6>
  <7> <6>
  <4! _->1
  <6>
  r2 <5>
  <6->2 <5>
  <4\+ 2>1
  r2 <6>
  r1
  <7 5>2 <6 5>
  <4> <_+>
  r1
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
