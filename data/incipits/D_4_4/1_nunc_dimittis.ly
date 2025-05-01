\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    d'8(-.\p d-. d-. d-.) c(-. c-. c-. c-.)
    b(-. b-. b-. b-.) a(-. a-. a-. a-.)
    a a a a g b b b
    b b b b d d d d
    es es c c c c c c
    d d b b e, e d d
    d d cis cis d4 r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    b'8(-.\p b-. b-. b-.) a(-. a-. a-. a-.)
    g(-. g-. g-. g-.) es(-. es-. es-. es-.)
    d d d d d d d d
    d d g g f! f f f
    es es es es es es es es
    d f g g g g f f
    e e e e d a'\pp a a
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    R1
    r4 d8 d c4 c
    c8 c b a b8. a16 g4
    r r8 d' h4 h
    c4. es8 a,2
    b!4 d cis d8 f,
    e2 d4 r
  }
}

TenoreLyrics = \lyricmode {
  Nunc di -- mit -- tis %2
  ser -- vum tu -- um Do -- mi -- ne,
  se -- cun -- dum
  ver -- bum tu --
  um in pa -- ce, in
  pa -- ce.
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    g'8(-.\p g-. g-. g-.) g(-. g-. fis-. fis-.)
    g(-. g-. g-. g-.) g(-. g-. g-. g-.)
    fis fis fis fis g g g g
    g, g g g g g g g
    c c c c f! f f f
    b, b g g a a a a
    a a a a d\pp d d d
  }
}

BassFigures = \figuremode {
  r2 <4 2>4 <5>
  r2 <4 2>
  <6 5>1
  r2 <7 _!>
  r <7>
  r4 <8> <7 _+> <6 4>
  <5 \t> <\t _+>2.
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics
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
