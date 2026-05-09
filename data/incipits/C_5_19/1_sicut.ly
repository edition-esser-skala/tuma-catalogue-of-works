\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key h \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    h'2. h4
    h2 ais
    a4 a c a
    a2 g
    e' d4 cis!
    h2. h4
    ais2 r
    r cis4 cis
    d cis d2
  }
}

SopranoLyrics = \lyricmode {
  Si -- cut
  o -- vis
  ad oc -- ci -- si --
  o -- nem
  du -- _ ctus,
  du -- ctus
  est,
  tra -- cta --
  re -- _ tur,
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key h \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    fis2. fis4
    e2 e
    fis4 fis fis fis
    fis2 e
    g fis
    fis e
    fis cis4 cis
    fis fis fis fis
    fis fis fis fis
  }
}

AltoLyrics = \lyricmode {
  Si -- cut
  o -- vis
  ad oc -- ci -- si --
  o -- nem
  du -- ctus,
  du -- ctus
  est, et dum
  ma -- le tra -- cta --
  re -- tur, non "a -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key h \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    d2. d4
    cis2 cis
    c4 c c c
    h2 h
    h ais
    d cis4 h
    cis2 r
    r ais4 ais
    h2 h
  }
}

TenoreLyrics = \lyricmode {
  Si -- cut
  o -- vis
  ad oc -- ci -- si --
  o -- nem
  du -- ctus,
  du -- ctus _
  est,
  tra -- cta --
  re -- tur,
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key h \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    h2. h4
    cis2 cis
    dis4 dis dis dis
    e2 e
    e fis
    g2. g4
    fis2 r
    r fis4 fis
    h2 h,
  }
}

BassoLyrics = \lyricmode {
  Si -- cut
  o -- vis
  ad oc -- ci -- si --
  o -- nem
  du -- ctus,
  du -- ctus
  est,
  tra -- cta --
  re -- tur,
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key h \minor \time 2/2 \tempoMarkup "Moderato"
    h1
    cis
    dis
    e
    e2 fis
    g1
    fis2 \clef alto cis'-!
    fis-! \clef bass fis,
    h h,
  }
}

BassFigures = \figuremode {
  r1
  <7>2 <6>
  <7 5>1
  <9 4>2 <8 3>
  r <6>4 <5>
  <7>2 <6>
  <_+1>
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
